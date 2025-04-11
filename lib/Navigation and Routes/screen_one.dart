import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_tutorial/Navigation and Routes/screen_two.dart';

class ScreenOne extends StatefulWidget {
  // Used in constructor when the navigation is simple
  // final String name;

  // Used with the routes and passing the data in form of arguments
  var name;

  // Getting the name by using the constructor
  // By using the simple navigator
  // const ScreenOne({super.key, this.name = ''});

  // USed with the routes
  ScreenOne({super.key, this.name});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Adding the name that we get from the constructor in the title
        // Used with the navigators
        // title: Text('Screen One' + widget.name),

        // Used with the routes passing the data from one screen to another
        title: Text('Screen One' + Get.arguments[0]),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(onPressed: (){
              // Classic way to move to back screen
              // Navigator.pop(context);

              // New way using the getx to go back
              Get.to(ScreenTwo());
            }, child: Text('Go To Screen Two')),
          ),
        ],
      ),
    );
  }
}

