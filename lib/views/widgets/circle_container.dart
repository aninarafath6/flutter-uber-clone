import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  const CircleContainer({
    Key? key,
    required this.child,
    this.width = 45,
    this.height = 45,
  }) : super(key: key);
  final Widget child;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[200],
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
