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
          Card(
            child: ListTile(
              title: Text('GetX Dialog Alert'),
              subtitle: Text('GetX dialog alert with getX'),
              onTap: (){
                Get.defaultDialog(
                  title: 'Delete Chat',
                  titlePadding: EdgeInsets.only(top: 20.0),
                  contentPadding: EdgeInsets.all(20),
                  // Middle text cannot be more than three lines so we use the content than
                  middleText: 'Are you sure you want to delete this chat?',
                  // Build in yes or no
                  // textConfirm: 'Yes',
                  // textCancel: 'No',
                  confirm: TextButton(onPressed: (){
                    //  Using the default way to close the dialog
                    // Navigator.pop(context);

                    // Using the getX way to close the dialog
                    Get.back();
                  }, child: Text('Ok')),
                  cancel: TextButton(onPressed: (){}, child: Text('Cancel')),
                  // Like in content we can design the dialog according to our requirements
                  content: Column(
                    children: [
                      Text('Hello')
                    ],
                  ),
                );
              },
            ),
          ),

          Card(
            child: ListTile(
              title: Text('GetX Bottom sheet'),
              subtitle: Text('GetX bottom sheet with getX'),
              onTap: (){
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text('Light Theme'),
                        ),

                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text('Dark Theme'),
                          onTap: () {

                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
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

