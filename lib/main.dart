import 'package:flutter/material.dart';
import 'package:flutter_getx_tutorial/home_screen.dart';
import 'package:flutter_getx_tutorial/Navigation and Routes/getx_navigation_and_routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const HomeScreen(),
      home: const NavigationAndRoutes(),
    );
  }
}
