import 'package:flutter/material.dart';
import 'package:quiz/model.dart';

Widget buildOption(BuildContext context, Option option) {
  return GestureDetector(
    child: Container(
      height: MediaQuery.of(context).size.height * 0.07,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            option.text,
            style: const TextStyle(fontSize: 20),
          )
        ],
      ),
    ),
  );
}
