import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget{
  const QuestionIdentifier({super.key, 
    required this.questionIndex, 
    required this.isCorrectAnswer});

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
        ? const Color.fromARGB(255, 12, 216, 46)
        : const Color.fromARGB(233, 218, 13, 92),
        borderRadius: BorderRadius.circular(200)
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          //fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Color.fromARGB(255, 24, 24, 23)
        ),
      ),
    );
  }
}