import 'package:flutter/material.dart';
import 'package:quiz/model.dart';

class QuestionWidget extends StatefulWidget {
  const QuestionWidget({Key? key}) : super(key: key);
  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

int _questionNumber = 1;

class _QuestionWidgetState extends State<QuestionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        Text('Soru $_questionNumber/${questions.length}'),
        const Divider(thickness: 2, color: Colors.grey),
        Expanded(
            child: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
        )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        )
      ]),
    );
  }
}
