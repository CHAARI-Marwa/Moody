import 'package:flutter/material.dart';
import 'package:moody/dashboard.dart';
import 'package:moody/doctor_list.dart';
import 'package:moody/explore.dart';
import 'package:moody/screens/activities/respiration.dart';
import 'package:moody/screens/activities/meditation.dart';
import 'package:moody/screens/activities/relaxation.dart';
import 'package:moody/screens/activities/yoga.dart';
import 'package:moody/screens/activities/jacobson.dart';
import 'package:moody/screens/activities/tictactoe.dart';

class PlaygroundScreen extends StatefulWidget {
  const PlaygroundScreen({Key? key}) : super(key: key);

  @override
  _PlaygroundScreenState createState() => _PlaygroundScreenState();
}

class _PlaygroundScreenState extends State<PlaygroundScreen> {
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
      body: GridView.count(
        padding: const EdgeInsets.all(16),
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: [
          _buildActivityCard(
            context,
            'Respiration',
            'Sophrology and Anxiety',
            Icons.air,
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const RespirationExercisePage()),
              );
            },
          ),
          _buildActivityCard(
            context,
            'Meditation',
            'Focus Your Mind, Relax',
            Icons.self_improvement,
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MeditationExercisePage()),
              );
            },
          ),
          _buildActivityCard(
            context,
            'Relaxation',
            'Inner Peace',
            Icons.spa,
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const RelaxationExercisePage()),
              );
            },
          ),
          _buildActivityCard(
            context,
            'Yoga',
            'Perform Calming Poses',
            Icons.accessibility_new,
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const YogaExercisePage()),
              );
            },
          ),
          _buildActivityCard(
            context,
            'Jacobson',
            'Release Tension with this Method',
            Icons.psychology,
            () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const JacobsonExercisePage()),
              );
            },
          ),
          _buildActivityCard(
            context,
            'Tic-Tac-Toe',
            'Strategy Duel',
            Icons.grid_3x3,
            () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TicTacToePage()),
              );
            },
          ),
          _buildActivityCard(
            context,
            'Suduko',
            'Brain Booster',
            Icons.grid_4x4,
            () {},
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: const IconThemeData(
            color: Color(0xFFE5989B)), 
        unselectedIconTheme: const IconThemeData(
            color: Colors.black), 
        currentIndex: 1, 
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

  Widget _buildActivityCard(BuildContext context, String title, String subtitle,
      IconData icon, VoidCallback onTap) {
    return Card(
      color: const Color(0xFF004D60),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 40,
                color: Colors.white,
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
