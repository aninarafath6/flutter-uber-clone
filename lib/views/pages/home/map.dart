import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uber_clone/controllers/map_controller.dart';

class Map extends StatelessWidget {
  final bool? reactive;

  final MapController controller = Get.put(MapController());

  Map({Key? key, this.reactive = false}) : super(key: key);
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
