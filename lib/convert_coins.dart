import 'package:flutter/material.dart';

class ConvertCoinsScreen extends StatefulWidget {
  @override
  _ConvertCoinsScreenState createState() => _ConvertCoinsScreenState();
}

class _ConvertCoinsScreenState extends State<ConvertCoinsScreen> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50), 
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
                        Icon(Icons.copyright, size: 16, color: Colors.black),
                        SizedBox(width: 4),
                        Text("998"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Row(
                children: [
                  Icon(Icons.person, size: 100, color: Color(0xFF005F73)),
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
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Icon(Icons.copyright, size: 60, color: Colors.white),
                      SizedBox(height: 10),
                      Text(
                        "Convert Coins",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Discount on medical Consultation",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 30),
                      _buildDiscountOption("10% Discount", "500"),
                      SizedBox(height: 20),
                      _buildDiscountOption("30% Discount", "1000"),
                      SizedBox(height: 20),
                      _buildDiscountOption("50% Discount", "2000"),
                      SizedBox(height: 20),
                      _buildDiscountOption("70% Discount", "3000"),
                      SizedBox(height: 40),
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

  Widget _buildDiscountOption(String discount, String coins) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            discount,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Icon(Icons.copyright, color: Colors.white, size: 20),
              SizedBox(width: 5),
              Text(
                coins,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
