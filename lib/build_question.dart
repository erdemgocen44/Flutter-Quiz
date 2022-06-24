import 'package:flutter/material.dart';

import 'model.dart';

Column buildQuestion(Question question) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 32),
      Text(
        question.text,
        style: const TextStyle(fontSize: 25),
      ),
      const SizedBox(
        height: 32,
      ),
      Expanded(
        child: OptionsWidget(question: question),
      ),
    ],
  );
}
