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

    // Classic way to get the height
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Tutorials'),
      ),
      body: Column(
        children: [
          Container(
            // Simple way to give the height
            // height: 100,

            // Using the media query to get height
            // height: MediaQuery.of(context).size.height * 0.3,

            // Using the classic way to give height
            // height: height * .2,

            // Using the getx to give height and width
            height: Get.height * 0.2,
            width: Get.width * .8,
            color: Colors.red,
            child: Center(
              child: Text('Center'),
            ),
          ),
          Container(
            // Simple way to give the height
            // height: 100,

            // Using the media query to get height
            // height: MediaQuery.of(context).size.height * 0.3,

            // Using the classic way to give height
            // height: height * .2,

            // Using the getx to give height and width
            height: Get.height * 0.1,
            width: Get.width * .8,
            color: Colors.green,
            child: Center(
              child: Text('Center'),
            ),
          ),
        ],
      ),
    );
  }
}
