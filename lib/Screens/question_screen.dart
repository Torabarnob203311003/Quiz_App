import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quiz_app/data/quiz_data.dart';

import '../widgets/option.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key , required this.onOptionSelected});
  final void Function(String) onOptionSelected;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
   var currentIndex =0;
   void _onOptionSelected(String answer){
     widget.onOptionSelected(answer);

     currentIndex ++;
     if(currentIndex == quizData.length){
       currentIndex =0;


     }

     setState(() {});

   }
  @override
  Widget build(BuildContext context) {
    return Column(
mainAxisAlignment: MainAxisAlignment.center,
      children: [
                 Container(
                   padding: const EdgeInsets.symmetric(horizontal: 20),
                   child: Text(quizData[currentIndex].question,
                     style: const TextStyle(
                       color: Colors.white,
                       fontSize: 24,
                       fontWeight: FontWeight.bold,

                     ),
                   ),
                 ),
         const SizedBox(height:20),


        ...quizData[currentIndex].shuffleOption.map((option) =>
            Option(text: option, onetap: (){ 
              _onOptionSelected(option);
              
            }),),
      ],





    );
  }
}


