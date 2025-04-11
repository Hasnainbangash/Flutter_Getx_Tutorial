import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_tutorial/Navigation and Routes/screen_two.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One'),
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

