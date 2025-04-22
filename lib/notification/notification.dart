import 'dart:ui'; // Make sure this is imported for ImageFilter

import 'package:flutter/material.dart';
import 'package:widget_practice/Employee/employee.dart';
import 'package:widget_practice/account/account.dart';
import 'package:widget_practice/all_branch/all_branch.dart';
import 'package:widget_practice/dashboard/dashboard.dart';
import 'package:widget_practice/departments/departments.dart';
import 'package:widget_practice/our_event/event.dart';
import 'package:widget_practice/partners/partners.dart';
import 'package:widget_practice/tour_support/tour_support.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage({super.key});

  final List<Map<String, String>> notifications = List.generate(
    10,
    (index) => {
      'title': 'New Message #$index',
      'subtitle': 'You have a new notification.',
      'time': 'Just now',
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text(
          'Notification',
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notification_add_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              print("User profile tapped");
            },
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Mak Tech Solution',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _buildDrawerItem(
                icon: Icons.people,
                title: "Employees",
                context: context,
                page: Employee()),
            _buildDrawerItem(
                icon: Icons.account_tree,
                title: "All Branch",
                context: context,
                page: AllBranch()),
            _buildDrawerItem(
                icon: Icons.event,
                title: "Events",
                context: context,
                page: Event()),
            _buildDrawerItem(
                icon: Icons.card_travel,
                title: "Tour Support",
                context: context,
                page: TourSupport()),
            _buildDrawerItem(
                icon: Icons.business,
                title: "Departments",
                context: context,
                page: Departments()),
            _buildDrawerItem(
                icon: Icons.handshake,
                title: "Partners",
                context: context,
                page: Partners()),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Stack(
              children: [
                // Blur Background
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
                // Foreground Tile with Shadow
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.75),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                    border: Border.all(color: Colors.white.withOpacity(0.2)),
                  ),
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    leading: Icon(Icons.notifications, color: Colors.blue),
                    title: Text(
                      notification['title'] ?? '',
                      style: TextStyle(color: Colors.black),
                    ),
                    subtitle: Text(
                      notification['subtitle'] ?? '',
                      style: TextStyle(color: Colors.black87),
                    ),
                    trailing: Text(
                      notification['time'] ?? '',
                      style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                    ),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Tapped on ${notification['title']}'),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        elevation: 10,
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Dashboard(),
                      ));
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.whatshot,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyAccountPage(),
                    ),
                  );
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.logout,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String title,
    required BuildContext context,
    required Widget page,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(title),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
