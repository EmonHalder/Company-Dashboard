import 'package:flutter/material.dart';

class Mediaquery extends StatelessWidget {
  const Mediaquery({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic width = MediaQuery.of(context).size.width;
    dynamic height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Media query"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              return Container(
                width: 200,
                height: 200,
                color: Colors.red,
                child: Column(
                  children: [Center(child: Text("I'am media query"))],
                ),
              );
            } else {
              return Container(
                width: 200,
                height: 200,
                color: Colors.green,
                child: Column(
                  children: [Center(child: Text("I'am media query"))],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
