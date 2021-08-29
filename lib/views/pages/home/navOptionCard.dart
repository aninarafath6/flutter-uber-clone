import 'package:flutter/material.dart';
import 'package:uber_clone/models/nav_option_model.dart';
import 'package:uber_clone/views/widgets/touchable_opacity.dart';

class NavOptionCard extends StatefulWidget {
  const NavOptionCard({
    Key? key,
    required this.nav,
  }) : super(key: key);
  final NavOptionModel nav;

  @override
  _NavOptionCardState createState() => _NavOptionCardState();
}

class _NavOptionCardState extends State<NavOptionCard> {
  bool isTappedDown = false;
  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        color: Colors.grey[200],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              widget.nav.icon,
              width: 120,
              height: 120,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 15),
            Text(
              widget.nav.title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
