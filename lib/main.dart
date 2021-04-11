import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:music_ui/views/home.dart';
import 'package:music_ui/views/onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: '/onboarding', page: () => Onboarding()),
        GetPage(name: '/home', page: () => Home()),
      ],
      initialRoute: "/onboarding",
    );
  }
}
