import 'package:flutter/material.dart';

class Aspectratio extends StatelessWidget {
  const Aspectratio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Aspect Ratio"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child: Container(
                color: Colors.red,
                child: FractionallySizedBox(
                  widthFactor: 0.5,
                  heightFactor: 0.5,
                  child: Container(
                    color: Colors.amber,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Card(
                  child: ListTile(
                    title: Text("Flutter developer"),
                    leading: Icon(Icons.person),
                    trailing: Icon(Icons.send),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Card(
                  child: ListTile(
                    title: Text("Flutter developer"),
                    leading: Icon(Icons.person),
                    trailing: Icon(Icons.send),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text("Flutter developer"),
                    leading: Icon(Icons.person),
                    trailing: Icon(Icons.send),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
