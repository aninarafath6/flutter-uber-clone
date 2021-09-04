import 'dart:async';
import 'dart:io';

import 'package:geolocator/geolocator.dart';
import 'package:get/state_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uber_clone/utils/geolocator.dart';
import 'package:flutter/services.dart' show rootBundle;

class HomeController extends GetxController {
  CameraPosition initialCameraPosition = CameraPosition(
    target: LatLng(11.0689135, 75.9361427),
    zoom: 25.0,
  );
  Completer<GoogleMapController> controller = Completer();
  String? _mapStyle;

  @override
  void onInit() {
    rootBundle.loadString('assets/map_style.txt').then((string) {
      _mapStyle = string;
    });
    getLocation().then((Position position) async {
      print(position);
      var _controller = await controller.future;
      _controller.animateCamera(
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

  void onMapCreated(GoogleMapController controller) async {
    this.controller.complete(controller);
    var _controller = await this.controller.future;
    _controller.setMapStyle(_mapStyle);
    for (var interface in await NetworkInterface.list()) {
      print('== Interface: ${interface.name} ==');
      for (var addr in interface.addresses) {
        print(
            '${addr.address} ${addr.host} ${addr.isLoopback} ${addr.rawAddress} ${addr.type.name}');
      }
      // e.g. 113.139.104.65 or ""
    }
  }
}
