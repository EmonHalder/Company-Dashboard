import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:widget_practice/Employee/employee.dart';
import 'package:widget_practice/account/account.dart';
import 'package:widget_practice/dashboard/dashboard.dart';
import 'package:widget_practice/departments/departments.dart';
import 'package:widget_practice/notification/notification.dart';
import 'package:widget_practice/our_event/event.dart';
import 'package:widget_practice/partners/partners.dart';
import 'package:widget_practice/tour_support/tour_support.dart';

class AllBranch extends StatelessWidget {
  const AllBranch({super.key});

  final List<Color> colors = const [
    Colors.blueAccent,
    Colors.green,
    Colors.purple,
    Colors.orange,
    // চাইলে আরও কালার যোগ করো
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text(
          'All Branch',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
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
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Mak Tech Solution',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            _drawerTile(
                icon: Icons.people,
                text: "Employees",
                context: context,
                target: Employee()),
            _drawerTile(
                icon: Icons.account_tree,
                text: "All Branch",
                context: context,
                target: AllBranch()),
            _drawerTile(
                icon: Icons.event,
                text: "Events",
                context: context,
                target: Event()),
            _drawerTile(
                icon: Icons.card_travel,
                text: "Tour Support",
                context: context,
                target: TourSupport()),
            _drawerTile(
                icon: Icons.business,
                text: "Departments",
                context: context,
                target: Departments()),
            _drawerTile(
                icon: Icons.handshake,
                text: "Partners",
                context: context,
                target: Partners()),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemCount: 2,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.lightBlue,
                          Colors.lightBlue,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          color: Colors.white.withOpacity(0.4), width: 1),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: const Offset(4, 4),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Branch ${index + 1}",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
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
              _navIcon(context, Icons.home, () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Dashboard()));
              }),
              _navIcon(context, Icons.search, () {}),
              _navIcon(context, Icons.person, () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => MyAccountPage()));
              }),
              _navIcon(context, Icons.logout, () {}),
            ],
          ),
        ),
      ),
    );
  }

  Widget _drawerTile(
      {required IconData icon,
      required String text,
      required BuildContext context,
      required Widget target}) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(text),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => target));
      },
    );
  }

  Widget _navIcon(BuildContext context, IconData icon, VoidCallback onPressed) {
    return IconButton(
      icon: Icon(icon, color: Colors.white, size: 30),
      onPressed: onPressed,
    );
  }
}
