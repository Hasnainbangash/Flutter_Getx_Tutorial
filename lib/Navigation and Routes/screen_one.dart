import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_tutorial/Navigation and Routes/screen_two.dart';

class ScreenOne extends StatefulWidget {
  final String name;

  // Getting the name by using the constructor
  const ScreenOne({super.key, this.name = ''});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Adding the name that we get from the constructor in the title
        title: Text('Screen One' + widget.name),
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

