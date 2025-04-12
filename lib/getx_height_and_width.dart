import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          Container(
            height: 200,
            color: Colors.red,
            child: Center(
              child: Text('Center'),
            ),
          ),
        ],
      ),
    );
  }
}
