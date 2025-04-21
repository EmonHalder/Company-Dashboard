import 'package:flutter/material.dart';
import 'dart:ui'; // For blur effect

class Listview extends StatefulWidget {
  const Listview({super.key});

  @override
  State<Listview> createState() => _ListviewState();
}

List<String> names = [
  'Emon Halder',
  'Rahim Uddin',
  'Karim Khan',
  'Tania Sultana',
  'Sadia Rahman',
  'Jamal Hossain',
  'Nadia Islam',
  'Asif Mahmud',
  'Mehzabien Chowdhury',
  'Alif Rahman',
  'Fahim Haque',
  'Shila Akter',
  'Nayeem Islam',
  'Rupa Khatun',
  'Masud Rana',
  'Tuhin Ahmed',
  'Amena Begum',
  'Sharmin Jahan',
  'Morshed Alam',
  'Tanvir Hossain',
  'Arafat Siddik',
  'Shakil Munsi'
];

class _ListviewState extends State<Listview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // White background for the screen
      appBar: AppBar(
        title: const Text(
          "All Developers",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: names.length,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20), // More rounded corners
              child: GestureDetector(
                onTap: () {
                  // Handle tapping action (e.g., show more details)
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${names[index]} tapped!'),
                      duration: const Duration(seconds: 2),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.blueAccent.shade100,
                        Colors.lightBlue.shade100
                      ], // Blue and light blue gradient
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    title: Text(
                      names[index],
                      style: const TextStyle(
                        fontWeight: FontWeight.w500, // Lighter font weight
                        color: Colors.black87, // Slightly lighter color
                        fontSize: 18, // Slightly larger text
                        letterSpacing:
                            0.5, // Added letter spacing for readability
                      ),
                    ),
                    subtitle: const Text(
                      "Flutter Developer",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14, // Subtle text size for subtitle
                        letterSpacing:
                            0.3, // Slight letter spacing for smoothness
                      ),
                    ),
                    leading: const CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black54,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
