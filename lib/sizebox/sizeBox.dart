import 'package:flutter/material.dart';

class Sizebox extends StatelessWidget {
  const Sizebox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Size box",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
          ),
          // Container(),
          Text("data"),
          SizedBox(
            width: 100,
            height: 100,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.red),
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
