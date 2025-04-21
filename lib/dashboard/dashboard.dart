import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // Index for BottomNavigationBar
  int _selectedIndex = 0;

  // Function to handle Bottom Navigation Bar item selection
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Pages to show based on the selected BottomNavigationBar item
  final List<Widget> _pages = [
    // Home Page
    Center(child: Text('Home Screen', style: TextStyle(fontSize: 24))),
    // Search Page
    Center(child: Text('Search Screen', style: TextStyle(fontSize: 24))),
    // Notifications Page
    Center(child: Text('Notifications Screen', style: TextStyle(fontSize: 24))),
    // Profile Page
    Center(child: Text('Profile Screen', style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar //
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text(
          '  MAK TECH SOLUTION',
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
              print("User profile tapped");
            },
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'MAK TECH SOLUTION',
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
            ),
            ListTile(
              leading: Icon(Icons.account_tree, color: Colors.blue),
              title: Text("All Branch"),
            ),
            ListTile(
              leading: Icon(Icons.event, color: Colors.blue),
              title: Text("Events"),
            ),
            ListTile(
              leading: Icon(Icons.card_travel, color: Colors.blue),
              title: Text("Tour Support"),
            ),
            ListTile(
              leading: Icon(Icons.business, color: Colors.blue),
              title: Text("Departments"),
            ),
            ListTile(
              leading: Icon(Icons.handshake, color: Colors.blue),
              title: Text("Partners"),
            ),
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

      // BottomNavigationBar at the bottom //
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        elevation: 10,
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.login,
                  color: Colors.white,
                  size: 32,
                ),
                onPressed: () {
                  // handle home icon tap
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 32,
                ),
                onPressed: () {
                  // handle home icon tap
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.logout,
                  color: Colors.white,
                  size: 32,
                ),
                onPressed: () {
                  // handle home icon tap
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
