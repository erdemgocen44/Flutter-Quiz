import 'package:flutter/material.dart';
import 'package:quiz/model.dart';

Widget buildOption(BuildContext context, Option option) {
  final color = getColorForOption(option, question);
  return GestureDetector(
    onTap: () => onClickedOption(option),
    child: Container(
      height: MediaQuery.of(context).size.height * 0.07,
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            option.text,
            style: const TextStyle(fontSize: 20),
          ),
          getIconForOption(option, question),
        ],
      ),
    ),
  );
}

Color getColorForOption(Option option, Question question) {
  final isSelected = option == question.selectedOption;
  if (question.isLocked) {
    if (isSelected) {
      return option.isCorrect ? Colors.green : Colors.red;
    }
  } else if (option.isCorrect) {
    return Colors.green;
  }
  return Colors.grey.shade300;
}

Widget getIconForOption(Option option, Question question) {
  final isSelected = option == question.selectedOption;
  if (question.isLocked) {if (isSelected) {return option.isCorrect?const Icon(Icons.check_circle,color:Colors.green):const Icon(Icons.cancel:Colors.red);
    
  }else if(option.isCorrect){
    return const Icon(Icons.check_circle,color:Colors.green);
  }
    
  } return const SizedBox.shrink();
}
