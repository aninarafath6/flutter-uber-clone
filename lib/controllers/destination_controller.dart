import 'package:geolocator/geolocator.dart';
import 'package:get/state_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uber_clone/utils/geolocator.dart';
import 'package:flutter/services.dart' show rootBundle;

class DestinationController extends GetxController {
  CameraPosition initialCameraPosition = CameraPosition(
    target: LatLng(11.0689135, 75.9361427),
    zoom: 20,
  );
  late GoogleMapController controller;
  String? _mapStyle;

  @override
  void onInit() {
    rootBundle.loadString('assets/map_style.txt').then((string) {
      _mapStyle = string;
    });
    getLocation().then((Position position) async {
      print(position);
      controller.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: LatLng(position.latitude, position.longitude),
            zoom: 18,
          ),
        ),
      );
    });
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void onMapCreated(GoogleMapController controller) async {
    this.controller = controller;
    // var _controller = await

    // ignore: unused_element
    void onMapCreated(GoogleMapController controller) async {
      this.controller = controller;
      // var _controller = await this.controller.future;
      controller.setMapStyle(_mapStyle);
    }
  }
}
