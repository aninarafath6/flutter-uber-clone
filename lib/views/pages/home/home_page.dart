import 'package:flutter/material.dart';
import 'package:uber_clone/views/pages/home/header_section.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderSection(),
          Expanded(
            flex: 2,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
