import 'package:flutter/material.dart';
import 'doctor_list.dart';
import 'had_survey.dart'; // Correct import for HADSurveyPage

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final String patientName = "Patient"; // This should come from user data
  final int mindHealthScore = 85;
  final String lastUpdate = "31/10/2056 10:12 AM";
  int _selectedIndex = 1; // Set "Let's Play" as active

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 2) { // Doctor tab
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DoctorListPage()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(Icons.person, color: Colors.grey[600]),
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello",
                          style: TextStyle(
                            fontSize: 24,
                            color: Color(0xFF005F73),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          patientName,
                          style: TextStyle(
                            fontSize: 24,
                            color: Color(0xFFE5989B),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.copyright, size: 16),
                          SizedBox(width: 4),
                          Text("0010"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Action Buttons
              _buildActionButton(
                icon: Icons.mic,
                text: "How are you feeling today?",
                color: Color(0xFF005F73),
                onTap: () {
                  // Handle voice input
                },
              ),
              _buildActionButton(
                icon: Icons.camera_alt,
                text: "Care to share a smile today?",
                color: Color(0xFF90E0EF),
                onTap: () {
                  // Handle camera
                },
              ),
              _buildActionButton(
                icon: Icons.restaurant_menu,
                text: "How was your diet today?",
                color: Color(0xFFE5989B),
                onTap: () {
                  // Handle diet input
                },
              ),

              // Last Update
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Text(
                      "Last Update",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      lastUpdate,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),

              // Mind Health Card
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mind Health",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 16),
                      Center(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              width: 150,
                              height: 150,
                              child: CircularProgressIndicator(
                                value: mindHealthScore / 100,
                                strokeWidth: 12,
                                backgroundColor: Colors.grey[200],
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Color(0xFF2A9D8F),
                                ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "$mindHealthScore",
                                  style: TextStyle(
                                    fontSize: 36,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF2A9D8F),
                                  ),
                                ),
                                Text(
                                  "Good",
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Bottom Cards
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: _buildInfoCard(
                        title: "HAD Survey",
                        icon: Icons.assignment,
                        date: lastUpdate,
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: _buildInfoCard(
                        title: "Chatbot",
                        icon: Icons.chat_bubble_outline,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline),
            label: "Let's Play",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Doctor',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF005F73),
        onTap: _onItemTapped,
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String text,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                Icon(icon, color: Colors.white),
                SizedBox(width: 12),
                Expanded(
                  child: Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard({
    required String title,
    required IconData icon,
    String? date,
  }) {
    return GestureDetector(
      onTap: () {
        if (title == "HAD Survey") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HADSurveyPage()),
          );
        }
      },
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 24),
            SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            if (date != null) ...[
              SizedBox(height: 4),
              Text(
                "Last Update: $date",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 12,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
