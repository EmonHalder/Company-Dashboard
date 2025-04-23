// import 'dart:ffi';

import 'package:flutter/material.dart';
// import 'package:widget_practice/account/account.dart';
import 'package:widget_practice/dashboard/dashboard.dart';
import 'package:widget_practice/gridView/gridView.dart';
// import 'package:widget_practice/notification/notification.dart';
// import 'package:widget_practice/pi_chart/chart.dart';
// import 'package:widget_practice/our_event/event.dart';
// import 'package:widget_practice/from_validation/validation.dart';
// import 'package:widget_practice/dashboard/dashboard.dart';
// import 'package:widget_practice/from/from.dart';
// import 'package:widget_practice/sizebox/sizeBox.dart';
// import 'package:widget_practice/from/from.dart';
// import 'package:widget_practice/listView/listView.dart';
// import 'package:widget_practice/dashboard/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      // home: Listview(),
      // home: SignUpPage(),
      // home: Sizebox(),
      // home: HomePage(),
      home: Dashboard(),
      // home: Gridview(),

      // home: MyAccountPage(),
      // home: Chart(),

      // home: NotificationPage(),
    );
  }
}
