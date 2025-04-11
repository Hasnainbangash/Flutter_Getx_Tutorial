import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_tutorial/Navigation and Routes/screen_one.dart';

class NavigationAndRoutes extends StatefulWidget {
  const NavigationAndRoutes({super.key});

  @override
  State<NavigationAndRoutes> createState() => _NavigationAndRoutesState();
}

class _NavigationAndRoutesState extends State<NavigationAndRoutes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Tutorials'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(onPressed: (){
              // Old way to move to the next page
              // Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenOne()));

              // GetX way to move to another screen
              Get.to(ScreenOne());
            }, child: Text('Go to next screen')),
          ),
        ],
      ),
    );
  }
}
