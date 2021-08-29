import 'package:flutter/material.dart';
import 'package:uber_clone/constants/app_images.dart';
import 'package:uber_clone/models/nav_option_model.dart';
import 'package:uber_clone/views/pages/home/navOptionCard.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _appBar(),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 190,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    child: NavOptionCard(nav: navOptions[index]),
                  ),
                  separatorBuilder: (context, index) => SizedBox(width: 20),
                  itemCount: navOptions.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Image _appBar() {
    return Image.asset(
      AppImages.UBER_LOGO,
      width: 100,
      fit: BoxFit.contain,
    );
  }
}
