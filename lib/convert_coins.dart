import 'package:flutter/material.dart';

class ConvertCoinsScreen extends StatefulWidget {
  @override
  _ConvertCoinsScreenState createState() => _ConvertCoinsScreenState();
}

class _ConvertCoinsScreenState extends State<ConvertCoinsScreen> {
  final String patientName = "Patient"; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF005F73),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            // Coin Logo at the Top
            Center(
              child: Icon(
                Icons.copyright,
                size: 80,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            // Title and Subtitle
            Text(
              "Convert Coins",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Discount on medical Consultation",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 40),

            // List of Discount Options
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 20),
                children: [
                  _buildDiscountOption("10% Discount", "500"),
                  SizedBox(height: 20),
                  _buildDiscountOption("30% Discount", "1000"),
                  SizedBox(height: 20),
                  _buildDiscountOption("50% Discount", "2000"),
                  SizedBox(height: 20),
                  _buildDiscountOption("70% Discount", "3000"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget for Discount Options
  Widget _buildDiscountOption(String discount, String coins) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
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
              Icon(
                Icons.copyright,
                color: Colors.white,
                size: 24,
              ),
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
