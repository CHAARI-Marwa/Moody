import 'package:flutter/material.dart';

class HADSurveyPage extends StatefulWidget {
  @override
  _HADSurveyPageState createState() => _HADSurveyPageState();
}

class _HADSurveyPageState extends State<HADSurveyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HAD Survey'),
        backgroundColor: Color(0xFF90E0EF),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                '+05',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildQuestion(context, 'Did you feel tension or stress over the past week?'),
          _buildQuestion(context, 'Did you feel slow in actions or movements?'),
          _buildQuestion(context, 'Did you feel worried or concerned over the past week?'),
          _buildQuestion(context, 'Did you feel excessive anxiety or panic over the past week?'),
          _buildQuestion(context, 'Did you feel like crying over the past week?'),
          _buildQuestion(context, 'Did you feel nervous tension over the past week?'),
          _buildQuestion(context, 'Did you feel worry and stress over the past week?'),
          _buildQuestion(context, 'Did you feel depressed over the past week?'),
          _buildQuestion(context, 'Did you feel physically exhausted over the past week?'),
          _buildQuestion(context, 'Did you feel mentally fatigued over the past week?'),
          _buildQuestion(context, 'Did you have difficulty enjoying things over the past week?'),
          _buildQuestion(context, 'Did you feel apprehensive over the past week?'),
          _buildQuestion(context, 'Did you experience panic over the past week?'),
        ],
      ),
    );
  }

  Widget _buildQuestion(BuildContext context, String question) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: _BuildOption(context, question),
    );
  }
}

class _BuildOption extends StatefulWidget {
  final BuildContext context;
  final String question;

  _BuildOption(this.context, this.question);

  @override
  __BuildOptionState createState() => __BuildOptionState();
}

class __BuildOptionState extends State<_BuildOption> {
  List<bool> isSelected = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.question,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        ToggleButtons(
          borderRadius: BorderRadius.circular(20),
          isSelected: isSelected,
          onPressed: (int index) {
            setState(() {
              for (int i = 0; i < isSelected.length; i++) {
                isSelected[i] = i == index;
              }
            });
          },
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text('Not at all'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text('Sometimes'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text('Often'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                'Most of\nthe time',
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
