import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key,required this.startQuiz});

 final void Function () startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Image.asset('assets/images/quiz.png',
        height: 250,
        ),
        const SizedBox(height: 30),
        const Text('Test Your Knowledge ',
          style: TextStyle(
              fontSize: 25,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 30),



        OutlinedButton.icon
          (onPressed: startQuiz,   //this term name lifting step up;
          icon :const Icon(Icons.arrow_forward),
          label: const Text(
          'Start Quiz',

    ),
    style: OutlinedButton.styleFrom(
    foregroundColor: Colors.white,

    ),

        ),

      ],


    );
  }
}
