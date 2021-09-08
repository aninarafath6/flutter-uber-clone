import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uber_clone/views/pages/select_destinantion/destination_map.dart';
// import 'package:uber_clone/views/pages/home/map.dart';
// import 'package:uber_clone/views/pages/home/map.dart';

class SelectDestination extends StatelessWidget {
  const SelectDestination({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          DestinationMap(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              width: Get.width * .90,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        splashRadius: 20,
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 30,
        ),
        onPressed: () {
          Get.back();
        },
      ),
      bottom: PreferredSize(
        preferredSize: Size(Get.width, 90),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 12),
          child: Column(
            children: [
              _NavigationSearch(hintText: 'Enter pickup point'),
              SizedBox(
                height: 7,
              ),
              _NavigationSearch(hintText: 'Where to ? '),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavigationSearch extends StatelessWidget {
  const _NavigationSearch({
    Key? key,
    this.hintText,
  }) : super(key: key);
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      color: Colors.grey[200],
      width: Get.width,
      height: 38,
      child: Center(
        child: TextField(
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText!,
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
