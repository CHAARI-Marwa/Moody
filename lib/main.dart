import 'package:flutter/material.dart';
import 'login.dart';
import 'dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moody',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF005F73),
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: Colors.white,
      ),
      home: DashboardScreen(),
      routes: {
        '/dashboard': (context) => DashboardScreen(),
      },
    );
  }
}
