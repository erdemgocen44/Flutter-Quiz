import 'package:flutter/material.dart';
import 'package:quiz/model.dart';

Widget buildOption(BuildContext context, Option option) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        option.text,
        style: const TextStyle(fontSize: 20),
      )
    ],
  );
}
