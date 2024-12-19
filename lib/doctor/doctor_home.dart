import 'package:flutter/material.dart';
import 'package:moody/doctor/urgent_cases.dart';

class DoctorHomePage extends StatefulWidget {
  const DoctorHomePage({Key? key}) : super(key: key);

  @override
  _DoctorHomePageState createState() => _DoctorHomePageState();
}

class _DoctorHomePageState extends State<DoctorHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF90E0EF),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.person, color: Color(0xFF005F73)),
                SizedBox(width: 8),
                Text(
                  "Doctor ShikhRouhou",
                  style: TextStyle(color: Color(0xFF005F73)),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.notifications, color: Color(0xFF005F73)),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.settings, color: Color(0xFF005F73)),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UrgentCasesPage()),
                );
              },
              child: Card(
                color: Colors.red[100],
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: Icon(Icons.warning, color: Colors.red),
                  title: Text(
                    'Urgent Cases',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red[700],
                    ),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.red),
                ),
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              'List of Patients',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 201, 201, 208),
              ),
            ),
            const SizedBox(height: 6),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                prefixIcon: Icon(Icons.search),
              ),
            ),
            const SizedBox(height: 40),
            Expanded(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    margin: const EdgeInsets.only(bottom: 12),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          contentPadding: const EdgeInsets.all(5),
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey[300],
                            child: const Icon(Icons.person, color: Colors.grey),
                          ),
                          title: const Text(
                            'Hedi Samet',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.add_circle_outline),
                            onPressed: () {},
                          ),
                        ),
                        ListTile(
                          contentPadding: const EdgeInsets.all(5),
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey[300],
                            child: const Icon(Icons.person, color: Colors.grey),
                          ),
                          title: const Text(
                            'Marwa Chaari',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          trailing: IconButton(
                            icon: const Icon(Icons.add_circle_outline),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
