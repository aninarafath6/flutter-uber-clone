import 'package:get/get_navigation/get_navigation.dart';
import 'package:uber_clone/routes/app_routes.dart';
import 'package:uber_clone/views/pages/home/home_page.dart';

class AppPages {
  static const INITIAL = Routes.HOME;
  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
      // binding: HomeBinding(),
    ),
  ];
}
