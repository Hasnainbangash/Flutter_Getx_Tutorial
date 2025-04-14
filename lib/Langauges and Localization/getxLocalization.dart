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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            // Here tr means the translation
            title: Text('message'.tr),
            subtitle: Text('name'),
          ),

          SizedBox(
            height: 50,
          ),

          Row(
            children: [
              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('en', 'US'));
              }, child: Text('English')),

              SizedBox(
                width: 20,
              ),

              OutlinedButton(onPressed: (){
                Get.updateLocale(Locale('ur', 'PK'));
              }, child: Text('Urdu'))
            ],
          ),
        ],
      ),
    );
  }
}
