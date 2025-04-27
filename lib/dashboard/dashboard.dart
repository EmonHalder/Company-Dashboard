import 'package:flutter/material.dart';
import 'package:widget_practice/Employee/employee.dart';
import 'package:widget_practice/account/account.dart';
import 'package:widget_practice/all_branch/all_branch.dart';
import 'package:widget_practice/departments/departments.dart';
import 'package:widget_practice/notification/notification.dart';
import 'package:widget_practice/our_event/event.dart';
import 'package:widget_practice/partners/partners.dart';
import 'package:widget_practice/tour_support/tour_support.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // Index for BottomNavigationBar
  // int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar //
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text(
          ' Dashboard',
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
                      builder: (context) => Employee(
                        names: [
                          "Emon",
                          "Heron",
                          "Kiron",
                          "Diron",
                          "Niron",
                          "Tiron"
                        ],
                        designations: [
                          "Flutter developer",
                          "Flutter developer",
                          "Flutter developer",
                          "Flutter developer",
                          "Flutter developer",
                          "Flutter developer"
                        ],
                        ages: [23, 25, 32, 28, 30, 24],
                      ), 
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
      // body //
      body: Padding(
        padding: const EdgeInsets.only(
            top: 50.0, left: 8.0, right: 8.0), // Added top gap of 50px
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Three boxes per row
            crossAxisSpacing: 10, // Horizontal space between boxes
            mainAxisSpacing: 10, // Vertical space between boxes
            childAspectRatio: 1.2, // Adjusting the aspect ratio of boxes
          ),
          itemCount: 6, // Total boxes
          itemBuilder: (context, index) {
            // Box titles
            List<String> titles = [
              "Employs",
              "All Branch",
              "Event",
              "Tour Support", // Additional box 1
              "Departments", // Additional box 2
              "Partners" // Additional box 3
            ];

            // Box colors
            List<Color> colors = [
              Colors.blue,
              Colors.blue,
              Colors.blue,
              Colors.blue, // Additional color 1
              Colors.blue, // Additional color 2
              Colors.blue // Additional color 3
            ];

            return Container(
              width: 120,
              height: 120,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: colors[index],
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [colors[index], colors[index].withOpacity(0.6)],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26, // shadow color
                    offset: Offset(4, 4), // x and y axis
                    blurRadius: 10, // softness of shadow
                    spreadRadius: 1, // how much it spreads
                  ),
                ],
              ),
              child: Text(
                titles[index],
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blue, // 🔵 Button color set to blue
          child: const Icon(
            Icons.call,
            color: Colors.white,
          )),

      // BottomNavigationBar at the bottom //
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
