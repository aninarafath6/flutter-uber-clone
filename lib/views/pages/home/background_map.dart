import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uber_clone/controllers/home_controller.dart';

class BgMap extends GetView<HomeController> {
  // Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          mapToolbarEnabled: false,
          mapType: MapType.normal,
          initialCameraPosition: controller.initialCameraPosition,
          myLocationEnabled: true,
          compassEnabled: false,
          tiltGesturesEnabled: true,
          buildingsEnabled: false,
          onMapCreated: controller.onMapCreated,
        ),
        Container(
          color: Colors.white.withOpacity(.6),
        ),
      ],
    );
  }
}
