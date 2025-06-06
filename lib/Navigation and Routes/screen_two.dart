import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen Two'),
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
              // On is to add the two times back to go from 2nd screen to the main screen
              Get.back();
              Get.back();
            }, child: Text('Go Back')),
          ),
        ],
      ),
    );
  }
}


