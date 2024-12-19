import 'package:flutter/material.dart';

class PatientHistoryPage extends StatefulWidget {
  const PatientHistoryPage({Key? key}) : super(key: key);

  @override
  _PatientHistoryPageState createState() => _PatientHistoryPageState();
}

class _PatientHistoryPageState extends State<PatientHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF90E0EF),
        title: const Text(
          "Patient Profile",
          style: TextStyle(color: Color(0xFF005F73)),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Color(0xFF005F73)),
                ),
                const SizedBox(width: 20),
                Text(
                  "Hedi Samet",
                  style: const TextStyle(
                    fontSize: 30,
                    color: Color(0xFF005F73),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            
            Card(
              color: Colors.white,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildSectionHeader('23/12/2056'),
                    const Divider(color: Colors.grey),
                    _buildUrgentRow('Suicidal Thoughts:', 'Yes'),
                    _buildProfileRow('Anxiety Interpretation:', 'High level'),
                    _buildProfileRow(
                        'Depression Interpretation:', 'High level'),
                    _buildProfileRow('Avg. Sleep Hours:', '6 hours 7 min'),
                    _buildProfileRow('Avg. Heart Rate:', '70 bpm'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              color: Colors.white,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildSectionHeader('22/12/2056'),
                    const Divider(color: Colors.grey),
                    
                    _buildProfileRow('Anxiety Interpretation:', 'Meduim level'),
                    _buildProfileRow(
                        'Depression Interpretation:', 'Meduim level'),
                    _buildProfileRow('Avg. Sleep Hours:', '8 hours 1 min'),
                    _buildProfileRow('Avg. Heart Rate:', '79 bpm'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              color: Colors.white,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildSectionHeader('21/12/2056'),
                    const Divider(color: Colors.grey),
                    
                    _buildProfileRow('Anxiety Interpretation:', 'High level'),
                    _buildProfileRow(
                        'Depression Interpretation:', 'High level'),
                    _buildProfileRow('Avg. Sleep Hours:', '10 hours 7 min'),
                    _buildProfileRow('Avg. Heart Rate:', '70 bpm'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 18, color: Colors.black),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUrgentRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 18, color: Colors.red),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 22,
        color: Color(0xFF005F73),
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
