import 'package:flutter/material.dart';
import 'login.dart';
import 'dashboard.dart';
import 'package:moody/explore.dart';
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
      home: LoginScreen(),
      routes: {
        '/dashboard': (context) => DashboardScreen(),
      },
    );
  }
}
