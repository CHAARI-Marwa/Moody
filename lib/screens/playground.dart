import 'package:flutter/material.dart';

class PlaygroundScreen extends StatelessWidget {
  const PlaygroundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Playground'),
        backgroundColor: Colors.lightBlue[100],
        // Remove leading back button to prevent app stop
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
            () {}, // Add navigation function
          ),
          _buildActivityCard(
            context,
            'Meditation',
            'Focus Your Mind, Relax',
            Icons.self_improvement,
            () {}, // Add navigation function
          ),
          _buildActivityCard(
            context,
            'Relaxation',
            'Inner Peace',
            Icons.spa,
            () {}, // Add navigation function
          ),
          _buildActivityCard(
            context,
            'Yoga',
            'Perform Calming Poses',
            Icons.accessibility_new,
            () {}, // Add navigation function
          ),
          _buildActivityCard(
            context,
            'Jacobson',
            'Release Tension with this Method',
            Icons.psychology,
            () {}, // Add navigation function
          ),
          _buildActivityCard(
            context,
            'Tic-Tac-Toe',
            'Strategy Duel',
            Icons.grid_3x3,
            () {}, // Add navigation function
          ),
          _buildActivityCard(
            context,
            'Suduko',
            'Brain Booster',
            Icons.grid_4x4,
            () {}, // Add navigation function
          ),
        ],
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
