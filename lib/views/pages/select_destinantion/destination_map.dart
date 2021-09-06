import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uber_clone/controllers/destination_controller.dart';

class DestinationMap extends StatelessWidget {
  final bool? reactive =true;

  final DestinationController controller = Get.put(DestinationController());

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapToolbarEnabled: true,
      mapType: MapType.normal,
      initialCameraPosition: controller.initialCameraPosition,
      myLocationEnabled: true,
      onMapCreated: controller.onMapCreated,
      zoomControlsEnabled: reactive!,
      zoomGesturesEnabled: reactive!,
      myLocationButtonEnabled: false,
      rotateGesturesEnabled: reactive!,
      scrollGesturesEnabled: reactive!,
      compassEnabled: false,
      // options: GoogleMapOptions(myLocationEnabled: true),
    );
  }
}
