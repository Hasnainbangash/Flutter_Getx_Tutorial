import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Getxlocalization extends StatefulWidget {
  const Getxlocalization({super.key});

  @override
  State<Getxlocalization> createState() => _GetxlocalizationState();
}

class _GetxlocalizationState extends State<Getxlocalization> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Tutorials'),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'),
          ),
        ],
      ),
    );
  }
}
