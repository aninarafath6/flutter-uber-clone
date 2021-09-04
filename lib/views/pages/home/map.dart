import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uber_clone/controllers/home_controller.dart';

class Map extends GetView<HomeController> {
  // Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapToolbarEnabled: true,
      mapType: MapType.normal,
      initialCameraPosition: controller.initialCameraPosition,
      myLocationEnabled: true,
      onMapCreated: controller.onMapCreated,
      zoomControlsEnabled: false,
      zoomGesturesEnabled: true,
      myLocationButtonEnabled: false,
      rotateGesturesEnabled: false,
      scrollGesturesEnabled: true,
      compassEnabled: false,
      // options: GoogleMapOptions(myLocationEnabled: true),
    );
  }
}
