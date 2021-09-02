import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:get/state_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uber_clone/utils/geolocator.dart';
import 'package:flutter/services.dart' show rootBundle;

class HomeController extends GetxController {
  CameraPosition initialCameraPosition = CameraPosition(
    target: LatLng(37.4220, -122.0840),
    zoom: 10.0,
  );
  Completer<GoogleMapController> controller = Completer();
  String? _mapStyle;

  @override
  void onInit() {
    rootBundle.loadString('assets/map_style.txt').then((string) {
      _mapStyle = string;
    });
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

  void onMapCreated(GoogleMapController controller) async {
    this.controller.complete(controller);
    var _controller = await this.controller.future;
    _controller.setMapStyle(_mapStyle);
  }
}
