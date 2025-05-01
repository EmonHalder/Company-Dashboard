import 'package:flutter/material.dart';

class Todolist extends StatefulWidget {
  const Todolist({super.key});

  @override
  State<Todolist> createState() => _TodolistState();
}

class _TodolistState extends State<Todolist> {
  TextEditingController _textFeild = TextEditingController();

  List<String> allData = [];

  putData() {
    setState(() {
      if (_textFeild.text.isNotEmpty) {
        allData.add(_textFeild.text);
        _textFeild.clear();
      }
    });
  }

  removeData(String index) {
    setState(() {
      allData.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            TextField(
              controller: _textFeild,
              decoration: InputDecoration(
                hintText: "Enter your data",
                label: Text("Entry Data"),
                border: OutlineInputBorder(),
                suffix: IconButton(
                  onPressed: () {
                    putData();
                  },
                  icon: Icon(Icons.add),
                  color: Colors.green,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: allData.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(allData[index]),
                      trailing: IconButton(
                        onPressed: () {
                          removeData(allData[index]);
                        },
                        icon: Icon(Icons.delete),
                        color: Colors.red,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
