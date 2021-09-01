import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:uber_clone/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override            
  Widget build(BuildContext context) {  
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uber Clone',
      getPages: AppPages.routes,
      initialRoute: AppPages.INITIAL,
    );
  }
}
