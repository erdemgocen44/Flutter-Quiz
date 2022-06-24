import 'package:flutter/material.dart';
import 'package:quiz/model.dart';

Widget buildOption(BuildContext context, Option option) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.07,
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(color: Colors.grey.shade200),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          option.text,
          style: const TextStyle(fontSize: 20),
        )
      ],
    ),
  );
}
