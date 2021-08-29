import 'package:flutter/material.dart';

class TouchableOpacity extends StatefulWidget {
  const TouchableOpacity({Key? key, required this.child, this.onTap})
      : super(key: key);
  final Widget child;
  final Function()? onTap;

  @override
  _TouchableOpacityState createState() => _TouchableOpacityState();
}

class _TouchableOpacityState extends State<TouchableOpacity> {
  bool isTappedDown = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onTapDown: (tapDownDetails) {
        setState(() {
          isTappedDown = true;
        });
      },
      onTapUp: (tapUpDetails) {
        setState(() {
          isTappedDown = false;
        });
      },
      child: Opacity(
        opacity: isTappedDown ? 0.5 : 1,
        child: widget.child,
      ),
    );
  }
}
