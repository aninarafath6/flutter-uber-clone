import 'package:flutter/material.dart';
import 'package:uber_clone/constants/app_colors.dart';
import 'package:uber_clone/constants/app_images.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: AppColors.headerColor,
        child: Stack(
          children: [
            AppBar(
              backgroundColor: AppColors.headerColor,
              elevation: 0,
              leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  size: 35,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Positioned(
              top: 80,
              left: 16,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 35.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Get out and about',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Stepping out? We'll help get you there and \nback again.",
                      style: TextStyle(
                        color: Colors.white,
                        wordSpacing: 1,
                        height: 1.4,
                        letterSpacing: .6,
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10),
                        child: Text(
                          'Ride with Uber',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: -60,
              right: -60,
              child: Image.asset(
                AppImages.PIZZA_image,
                width: 180,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
