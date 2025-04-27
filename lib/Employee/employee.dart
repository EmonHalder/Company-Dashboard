import 'package:flutter/material.dart';
import 'package:widget_practice/account/account.dart';
import 'package:widget_practice/all_branch/all_branch.dart';
import 'package:widget_practice/dashboard/dashboard.dart';
import 'package:widget_practice/departments/departments.dart';
import 'package:widget_practice/notification/notification.dart';
import 'package:widget_practice/our_event/event.dart';
import 'package:widget_practice/partners/partners.dart';
import 'package:widget_practice/tour_support/tour_support.dart';

class Employee extends StatelessWidget {
  final List<String> names;
  final List<String> designations;
  final List<int> ages;

  const Employee({
    super.key,
    this.names = const [
      'John Doe',
      'Jane Smith',
      'Alex Johnson',
      'Emily Davis',
      'Michael Brown'
    ],
    this.designations = const [
      'Manager',
      'Developer',
      'Designer',
      'HR',
      'Sales'
    ],
    this.ages = const [30, 25, 28, 32, 29],
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text(
          'Employee',
          style: TextStyle(
              fontSize: 22, color: Colors.white, fontWeight: FontWeight.w400),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationPage()),
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
            const DrawerHeader(
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
                leading: const Icon(Icons.people, color: Colors.blue),
                title: const Text("Employees"),
                onTap: () {
                  Navigator.pop(
                      context); // just close drawer, not open new page
                }),
            ListTile(
                leading: const Icon(Icons.account_tree, color: Colors.blue),
                title: const Text("All Branch"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AllBranch()),
                  );
                }),
            ListTile(
                leading: const Icon(Icons.event, color: Colors.blue),
                title: const Text("Events"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Event()),
                  );
                }),
            ListTile(
                leading: const Icon(Icons.card_travel, color: Colors.blue),
                title: const Text("Tour Support"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TourSupport()),
                  );
                }),
            ListTile(
                leading: const Icon(Icons.business, color: Colors.blue),
                title: const Text("Departments"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Departments()),
                  );
                }),
            ListTile(
                leading: const Icon(Icons.handshake, color: Colors.blue),
                title: const Text("Partners"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Partners()),
                  );
                }),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: const Icon(Icons.person),
                  title: Text(names[index]),
                  subtitle:
                      Text("${designations[index]} • ${ages[index]} years old"),
                  trailing: const Icon(Icons.send),
                ),
              ),
            );
          },
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
                icon: const Icon(Icons.home, color: Colors.white, size: 30),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Dashboard()),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.whatshot, color: Colors.white, size: 30),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.search, color: Colors.white, size: 30),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.person, color: Colors.white, size: 30),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyAccountPage()),
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.logout, color: Colors.white, size: 30),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
