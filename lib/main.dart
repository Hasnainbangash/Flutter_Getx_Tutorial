import 'package:flutter/material.dart';
import 'package:flutter_getx_tutorial/home_screen.dart';
import 'package:flutter_getx_tutorial/Navigation and Routes/getx_navigation_and_routes.dart';
import 'package:flutter_getx_tutorial/Navigation and Routes/screen_one.dart';
import 'package:flutter_getx_tutorial/Navigation and Routes/screen_Two.dart';
import 'package:flutter_getx_tutorial/getx_height_and_width.dart';
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
      // locale: Locale('en', 'US'),
      // Fallback kehte hain ke agr ap ke pass koi be langauge ni select 
      fallbackLocale: Locale('en', 'US'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),

      // For getx utils
      // home: const HomeScreen(),

      // // For navigation and routes
      // home: const NavigationAndRoutes(),
      // // Added the routes to to the screens
      // getPages: [
      //   GetPage(name: '/', page: () => NavigationAndRoutes()),
      //   GetPage(name: '/screenOne', page: () => ScreenOne()),
      //   GetPage(name: '/screenTwo', page: () => ScreenTwo()),
      // ],

      // For getx height and width
      home: const GetXHeightAndWidth(),

      // For getx localization

    );
  }
}
