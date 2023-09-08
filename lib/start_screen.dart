import 'package:flutter/material.dart';

// import 'package:quiz_app/quiz.dart';

// import 'package:quiz_app/questions_screen.dart';


class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz ,{super.key});
  final void Function() startQuiz;


  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
            Image.asset(
              'assets/images/quiz-logo.png', 
              width: 300,
              color: const Color.fromARGB(137, 251, 251, 252),
              ),
          // Opacity(
          //   opacity: 0.9,
          //   child: Image.asset('assets/images/quiz-logo.png', width: 300),
          // ),
          const SizedBox(
            height: 30,
          ),
          const Text(
              style: TextStyle(fontSize: 28), 'Learn flutter the fun way'),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_forward_ios_rounded),
            label: const Text(style: TextStyle(fontSize: 20), 'Start Quiz'),
          ),
          // TextButton(
          //   onPressed: () {},
          //   child: const Text(style: TextStyle(fontSize: 20),'start quiz'),
          // ),
        ],
      ),
    );
  }
}
