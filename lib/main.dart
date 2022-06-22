import 'package:flutter/material.dart';
import 'package:quiz/questionwidget.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Quiz App',
      home: Scaffold(
        body: QuestionWidget(),
      ),
    );
  }
}
