import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class BreathingExercisePage extends StatelessWidget {
  const BreathingExercisePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Breathing Video',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.teal[300],
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: HtmlWidget(
            '''
            <iframe width="100%" height="100%" src="https://www.youtube.com/embed/l68RrTZQdlk" frameborder="0" allowfullscreen></iframe>
            ''',
          ),
        ),
      ),
    );
  }
}
