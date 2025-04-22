import 'package:flutter/material.dart';
import 'package:widget_practice/Employee/employee.dart';
import 'package:widget_practice/all_branch/all_branch.dart';
import 'package:widget_practice/dashboard/dashboard.dart';
import 'package:widget_practice/departments/departments.dart';
import 'package:widget_practice/notification/notification.dart';
import 'package:widget_practice/our_event/event.dart';
import 'package:widget_practice/partners/partners.dart';
import 'package:widget_practice/tour_support/tour_support.dart';

class MyAccountPage extends StatelessWidget {
  const MyAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text(
          'Account',
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Profile picture
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                  'https://scontent.fcla7-1.fna.fbcdn.net/v/t39.30808-1/480062327_1966396297218777_8434310990558978119_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=106&ccb=1-7&_nc_sid=e99d92&_nc_ohc=iFy-1JEdE4EQ7kNvwGF0Pjg&_nc_oc=AdlecCtdnnPb8CGts-5Rybi0itk1wYgSyPxmEZiJL0rIZi4JeT5W0YnGMnQ5mAWvuf0&_nc_zt=24&_nc_ht=scontent.fcla7-1.fna&_nc_gid=Hsqe2r7A360XGMK1_PyEBg&oh=00_AfFvF-c9QO2tLOj4Q6KzwdDnR_Cnpa44JqnKaRlrsmUN5g&oe=680D34D8', // Sample profile image
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Name
            _buildInfoTile(
                "Emon Halder", "Sr. Flutter developer", Icons.person),

            // Email
            _buildInfoTile("Email", "emon.maktech@gmail.com", Icons.email),

            // Address
            _buildInfoTile("Address",
                "Pragati sarani, Jamuna Future Park, Dhaka", Icons.location_on),

            const SizedBox(height: 20),

            // Optional: Edit button
            ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Edit profile coming soon...")),
                );
              },
              icon: const Icon(Icons.edit),
              label: const Text("Edit Profile"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
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
                onPressed: () {},
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

  Widget _buildInfoTile(String label, String value, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(value),
        tileColor: Colors.grey.shade100,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
