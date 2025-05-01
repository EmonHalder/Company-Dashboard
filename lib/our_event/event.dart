import 'package:flutter/material.dart';
import 'package:widget_practice/Employee/employee.dart';
import 'package:widget_practice/account/account.dart';
import 'package:widget_practice/all_branch/all_branch.dart';
import 'package:widget_practice/dashboard/dashboard.dart';
import 'package:widget_practice/departments/departments.dart';
import 'package:widget_practice/notification/notification.dart';
import 'package:widget_practice/partners/partners.dart';
import 'package:widget_practice/tour_support/tour_support.dart';

class Event extends StatelessWidget {
  const Event({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text(
          ' Event',
          style: TextStyle(
              fontSize: 22, color: Colors.white, fontWeight: FontWeight.w400),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notification_add_rounded, // User profile icon
              color: Colors.white,
            ),
            onPressed: () {
              // Handle user profile icon tap
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationPage(),
                ),
              );
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
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Mak Tech Solution',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
                leading: Icon(Icons.people, color: Colors.blue),
                title: Text("Employees"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Employee(),
                    ),
                  );
                }),
            ListTile(
                leading: Icon(Icons.account_tree, color: Colors.blue),
                title: Text("All Branch"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AllBranch(),
                    ),
                  );
                }),
            ListTile(
                leading: Icon(Icons.event, color: Colors.blue),
                title: Text("Events"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Event(),
                    ),
                  );
                }),
            ListTile(
                leading: Icon(Icons.card_travel, color: Colors.blue),
                title: Text("Tour Support"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TourSupport(),
                    ),
                  );
                }),
            ListTile(
                leading: Icon(Icons.business, color: Colors.blue),
                title: Text("Departments"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Departments(),
                    ),
                  );
                }),
            ListTile(
                leading: Icon(Icons.handshake, color: Colors.blue),
                title: Text("Partners"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Partners(),
                    ),
                  );
                }),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: Text("Anual picnic"),
                subtitle: Text("December in 2024"),
              ),
            )
          ],
        ),
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
}
