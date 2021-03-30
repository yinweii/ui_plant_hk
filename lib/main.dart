import 'package:flutter/material.dart';
import 'package:plantshop/page/homepage.dart';
import 'package:plantshop/page/loginpage.dart';
import 'package:plantshop/uitl/global.dart';

import 'page/registerpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plant Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: white,
      ),
      home: LoginScreen(),
    );
  }
}
