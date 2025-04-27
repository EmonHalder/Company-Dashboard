import 'package:flutter/material.dart';

class Gridview extends StatelessWidget {
  const Gridview({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> myList = [
      "Emon",
      "Kabir",
      "Pinky",
      "Dinky",
      "Tingky",
      "Rinky"
    ];

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
            child: SizedBox(
              width: double.infinity,
              height: 500,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: myList.length - 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.orange,
                    ),
                    child: Center(child: Text(myList[index])),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
