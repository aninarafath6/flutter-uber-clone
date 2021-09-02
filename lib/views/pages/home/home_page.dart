import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uber_clone/constants/app_sizes.dart';
import 'package:uber_clone/views/pages/home/header_section.dart';
import 'package:uber_clone/views/pages/home/map.dart';
import 'package:uber_clone/views/widgets/circle_container.dart';

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
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 15.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _WhereToSearchBar(),
                  SizedBox(height: 20),
                  _selectSavedPlaces(),
                  SizedBox(height: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Around you',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: Get.height * .20,
                        child: Map(),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  ListTile _selectSavedPlaces() {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: CircleContainer(
        child: Icon(
          Icons.star,
          color: Colors.black,
        ),
      ),
      title: Text(
        'Choose a saved place',
        style: TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Icon(Icons.chevron_right),
    );
  }
}

class _WhereToSearchBar extends StatelessWidget {
  const _WhereToSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      width: Get.width,
      height: 55,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Text(
              'Where to?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: VerticalDivider(
                thickness: 1,
              ),
            ),
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.watch_later,
                  ),
                  AppSizes.DEFAULT_WIDTH_SPACER,
                  Text(
                    "Now",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  AppSizes.DEFAULT_WIDTH_SPACER,
                  Icon(Icons.expand_more),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
