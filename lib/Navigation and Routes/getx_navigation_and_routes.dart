import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            child: TextButton(onPressed: (){}, child: Text('Go to next screen')),
          ),
        ],
      ),
    );
  }
}
