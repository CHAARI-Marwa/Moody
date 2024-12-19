import 'package:flutter/material.dart';

void press(BuildContext context, Widget destinationPage) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => destinationPage),
  );
}

class ApproveAlertDialog extends StatelessWidget {
  final String title;
  final String contentText;
  final VoidCallback onOkPressed;

  ApproveAlertDialog({
    required this.title,
    required this.contentText,
    required this.onOkPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 26.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFFE5989B),
          decoration: TextDecoration.none,
        ),
      ),
      content: Text(
        contentText,
        style: TextStyle(
          fontSize: 22.0,
          color: Color(0xFF005F73),
          decoration: TextDecoration.none,
        ),
      ),
      actions: [
        TextButton(
          onPressed: onOkPressed,
          child: Text(
            'OK',
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFFE5989B),
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ],
    );
  }
}

class ToConfirmDialog extends StatelessWidget {
  final String contentText;
  final VoidCallback onYesPressed;
  final VoidCallback onNoPressed;

  ToConfirmDialog({
    required this.contentText,
    required this.onYesPressed,
    required this.onNoPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Please respond!',
        style: TextStyle(
          fontSize: 26.0,
          fontFamily: 'titre',
          color: Color(0xFFE5989B),
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
      ),
      content: Text(
        contentText,
        style: TextStyle(
          fontSize: 22.0,
          color: Color(0xFF005F73),
          decoration: TextDecoration.none,
        ),
      ),
      actions: [
        TextButton(
          onPressed: onYesPressed,
          child: Text(
            'Yes',
            style: TextStyle(
              fontSize: 22.0,
              fontFamily: 'ecriture',
              color: Color(0xFF005F73),
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
          ),
        ),
        TextButton(
          onPressed: onNoPressed,
          child: Text(
            'No',
            style: TextStyle(
              fontSize: 22.0,
              fontFamily: 'ecriture',
              color: Color(0xFFE5989B),
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ],
    );
  }
}
