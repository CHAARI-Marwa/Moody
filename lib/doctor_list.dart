import 'package:flutter/material.dart';
import 'package:moody/dashboard.dart';
import 'package:moody/explore.dart';
import 'package:moody/screens/playground.dart';

class DoctorListPage extends StatefulWidget {
  const DoctorListPage({Key? key}) : super(key: key);

  @override
  _DoctorListPageState createState() => _DoctorListPageState();
}

class _DoctorListPageState extends State<DoctorListPage> {
  void _onItemTapped(int index) {
    switch (index) {
      case 0: 
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  DashboardScreen()), 
        );
        break;
      case 1: 
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  PlaygroundScreen()), 
        );
        break;
      case 2: 
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  DoctorListPage()), 
        );
        break;
      case 3: 
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  OnboardingScreen()), 
        );
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              margin: const EdgeInsets.only(bottom: 12),
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.all(12),
                leading: CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  child: const Icon(Icons.person, color: Colors.grey),
                ),
                title: Text(
                  'Doctor ${index + 1}',
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: const Text('Location: Tunisia'),
                trailing: IconButton(
                  icon: const Icon(Icons.add_circle_outline),
                  onPressed: () {
                  },
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: const IconThemeData(
            color: Color(0xFFE5989B)), 
        unselectedIconTheme: const IconThemeData(
            color: Colors.black),
        currentIndex: 2, 
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.games),
            label: "Let's Play",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_services),
            label: 'Doctor',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
