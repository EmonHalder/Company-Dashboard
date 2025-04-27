import 'package:flutter/material.dart';

class Increment extends StatefulWidget {
  const Increment({super.key});

  @override
  State<Increment> createState() => _IncrementState();
}

class _IncrementState extends State<Increment> {
  int count = 0;

  incrementCount() {
    setState(() {
      count++;
    });
  }

  decrement() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 400,
          ),
          Center(
            child: Text(
              count.toString(),
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.w600, color: Colors.red),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              incrementCount();
            },
            child: Icon(Icons.add),
          ),
          ElevatedButton(
            onPressed: () {
              decrement();
            },
            child: Icon(Icons.minimize),
          ),
        ],
      ),
    );
  }
}
