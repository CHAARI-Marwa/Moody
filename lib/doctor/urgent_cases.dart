import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:moody/doctor/patient_profile.dart';

class UrgentCasesPage extends StatefulWidget {
  const UrgentCasesPage({Key? key}) : super(key: key);

  @override
  _UrgentCasesPageState createState() => _UrgentCasesPageState();
}

class _UrgentCasesPageState extends State<UrgentCasesPage> {
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
                Text(
                  "Urgent Cases",
                  style: TextStyle(color: Color(0xFF005F73)),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PatientProfilePage()),
                              );
                            },
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
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PatientProfilePage()),
                              );
                            },
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
