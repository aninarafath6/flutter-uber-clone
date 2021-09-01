import 'package:geolocator/geolocator.dart';
import 'package:get/state_manager.dart';
import 'package:uber_clone/utils/geolocator.dart';

class HomeController extends GetxController {
  Rx<Position>? userLocation;

  @override
  void onInit() {
    getLocation().then((Position position) {
      userLocation = position as Rx<Position>;
    });
    super.onInit();
  }
}
