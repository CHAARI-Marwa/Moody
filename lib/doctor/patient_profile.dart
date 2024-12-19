import 'package:flutter/material.dart';
import 'package:moody/doctor/view_patient_activity_history.dart';

class PatientProfilePage extends StatefulWidget {
  const PatientProfilePage({Key? key}) : super(key: key);

  @override
  _PatientProfilePageState createState() => _PatientProfilePageState();
}

class _PatientProfilePageState extends State<PatientProfilePage> {
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
                    _buildSectionHeader('Profile Information'),
                    const Divider(color: Colors.grey),
                    _buildProfileRow('Age:', '19'),
                    _buildProfileRow('Gender:', 'Male'),
                    _buildProfileRow('Has Chromatic Disease:', 'No'),
                    _buildProfileRow('Taking Medicine:', 'No'),
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
                    _buildSectionHeader('Patient Analysis'),
                    const Divider(color: Colors.grey),
                    _buildUrgentRow('Suicidal Thoughts:', 'Yes'),
                    _buildProfileRow('Anxiety Interpretation:', 'High level'),
                    _buildProfileRow(
                        'Depression Interpretation:', 'High level'),
                    _buildProfileRow('Last HAD Survey:', '31/10/2056'),
                    _buildProfileRow('Avg. Sleep Hours:', '6 hours 7 min'),
                    _buildProfileRow('Avg. Heart Rate:', '70 bpm'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PatientHistoryPage()),
                              );
                            },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFE5989B),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Container(
                width: 300,
                alignment: Alignment.center,
                child: const Text(
                  "View Patient Activity History",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF005F73),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Container(
                width: 300,
                alignment: Alignment.center,
                child: const Text(
                  "Invite Patient for Urgent Consultation",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
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
