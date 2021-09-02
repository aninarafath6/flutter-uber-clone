import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:get/state_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uber_clone/utils/geolocator.dart';

class HomeController extends GetxController {
  CameraPosition initialCameraPosition = CameraPosition(
    target: LatLng(37.4220, -122.0840),
    zoom: 10.0,
  );
  Completer<GoogleMapController> controller = Completer();

  @override
  void onInit() {
    getLocation().then((Position position) async {
      var _controller = await controller.future;
      _controller.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: LatLng(position.latitude, position.longitude),
            zoom: 15,
          ),
        ),
      );
    });
    super.onInit();
  }

  void onMapCreated(GoogleMapController controller) {
    this.controller.complete(controller);
  }
}
