import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Tutorials'),
      ),
      body: Column(
        children: [

        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        // Snackbar presents the message from the use that comes from the top of the mobile screen
        Get.snackbar(
            'Hasnain',
            'Subscribe to my channel',
          icon: Icon(Icons.add),
          onTap: (snap){

          },
          // It makes the button on the right side of the snackbar
          mainButton: TextButton(onPressed: (){}, child: Text('Click')),
          backgroundColor: Colors.blue,
          snackPosition: SnackPosition.BOTTOM,
        );
      }),
    );
  }
}

