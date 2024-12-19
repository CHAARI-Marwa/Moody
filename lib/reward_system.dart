import 'package:flutter/material.dart';
import 'package:moody/convert_coins.dart';
import 'package:moody/dashboard.dart';
class RewardSystemScreen extends StatefulWidget {
  @override
  _RewardSystemScreenState createState() => _RewardSystemScreenState();
}

class _RewardSystemScreenState extends State<RewardSystemScreen> {
  final String patientName = "Hedi";  

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
                Padding(
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
                  color: Color(0xFF005F73),
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
                          
                          Icon(
                            Icons.copyright,
                            color: Colors.white,
                            size: 100,
                          ),
                          Text(
                            "Reward System",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.mic, color: Colors.white, size: 30),
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: Text(
                                      "Speak into the Microphone.",
                                      style: TextStyle(color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                  Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,  
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.white, 
                                        width: 2,            
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "5",
                                      style: TextStyle(
                                        color: Colors.white,  
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              SizedBox(height: 25),
                              Row(
                                children: [
                                  Icon(Icons.camera_alt, color: Colors.white, size: 30),
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: Text(
                                      "Share Your Smile.",
                                      style: TextStyle(color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                  Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent, 
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.white, 
                                        width: 2,            
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "5",
                                      style: TextStyle(
                                        color: Colors.white,  
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              SizedBox(height: 25),
                              Row(
                                children: [
                                  Icon(Icons.restaurant, color: Colors.white, size: 30),
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: Text(
                                      "Capture Your Meal.",
                                      style: TextStyle(color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                  Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent, 
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.white, 
                                        width: 2,            
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "5",
                                      style: TextStyle(
                                        color: Colors.white,  
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              SizedBox(height: 25),
                              Row(
                                children: [
                                  Icon(Icons.videogame_asset, color: Colors.white, size: 30),
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: Text(
                                      "Let's Play!",
                                      style: TextStyle(color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                  Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent, 
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.white, 
                                        width: 2,            
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "5",
                                      style: TextStyle(
                                        color: Colors.white,  
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                              SizedBox(height: 25),
                              Row(
                                children: [
                                  Icon(Icons.chat, color: Colors.white, size: 30),
                                  SizedBox(width: 20),
                                  Expanded(
                                    child: Text(
                                      "Chatbot.",
                                      style: TextStyle(color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                  Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent, 
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.white, 
                                        width: 2,            
                                      ),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "5",
                                      style: TextStyle(
                                        color: Colors.white,  
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                          
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {   
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ConvertCoinsScreen(),
                            ),
                          );                       
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFE5989B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          "Convert Coins",
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
