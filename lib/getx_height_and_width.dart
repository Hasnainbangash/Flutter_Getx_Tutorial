import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXHeightAndWidth extends StatefulWidget {
  const GetXHeightAndWidth({super.key});

  @override
  State<GetXHeightAndWidth> createState() => _GetXHeightAndWidthState();
}

class _GetXHeightAndWidthState extends State<GetXHeightAndWidth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Tutorials'),
      ),
      body: Container(
        // Simple way to give the height
        // height: 100,

        // Using the media query to get height
        // height: MediaQuery.of(context).size.height * 0.3,

        // Using the getx to get height
        height: Get.height * 0.3,
        color: Colors.red,
        child: Center(
          child: Text('Center'),
        ),
      ),
    );
  }
}
