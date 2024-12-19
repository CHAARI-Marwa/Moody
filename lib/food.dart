import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:moody/reward_system.dart';

class CaptureFoodScreen extends StatefulWidget {
  @override
  _CaptureFoodScreenState createState() => _CaptureFoodScreenState();
}

class _CaptureFoodScreenState extends State<CaptureFoodScreen> {
  final String patientName = "Patient";
  final ImagePicker picker = ImagePicker();
  File? _image;
  List<dynamic> objDetect = [];
  List<dynamic> boxes = [];

  Future<void> getImageFromCamera() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    List<dynamic> newDetectionList = [];
    setState(() {
      objDetect = newDetectionList;
      boxes.clear();
    });
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/white_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 50)),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RewardSystemScreen(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.copyright, size: 16),
                          SizedBox(width: 4),
                          Text("998"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      size: 100,
                      color: Color(0xFF005F73),
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello",
                          style: TextStyle(
                            fontSize: 40,
                            color: Color(0xFF005F73),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          patientName,
                          style: TextStyle(
                            fontSize: 40,
                            color: Color(0xFFE5989B),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 56),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFE5989B),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.copyright, size: 16),
                                      SizedBox(width: 4),
                                      Text("+04"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.fastfood,
                            color: Colors.black,
                            size: 100,
                          ),
                          Text(
                            "Capture Your Meal",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Help us understand your diet by sharing a photo",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 40),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "• Tap the button below to take a photo of your meal.",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 6),
                              Text(
                                "• Try to capture the entire meal in good lighting.",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 35),
                          Icon(
                            Icons.info_rounded,
                            color: Colors.black,
                            size: 40,
                          ),
                          SizedBox(height: 25),
                          Text(
                            "Your photo is analyzed locally on your device.\nIt is not saved, shared, or stored.",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          getImageFromCamera();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF005F73),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          "Take Photo",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
