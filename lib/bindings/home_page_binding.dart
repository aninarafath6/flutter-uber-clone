import 'package:get/get.dart';
import 'package:uber_clone/controllers/home_controller.dart';

class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
