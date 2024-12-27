import 'package:flutter/material.dart';
import 'package:quiz_app/data/quiz_data.dart';
class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key,required this.userAnwsers});
  final List<String> userAnwsers;

  List<Map<String,Object>> getSummary(){

    List<Map<String,Object>> summary = [];
   for(var i = 0; i <userAnwsers.length; i++){

     summary.add (
       {
         'index ': i,
         'question' : quizData[i].question,
         'user_anwser': userAnwsers[i],
         'correct_anwser': quizData[i].option[0],
       }
     );
   }
   return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummary();
    print(summaryData);
    int score = summaryData.where((question) => question['user_answer'] == question ['correct_answer']).length;
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('You Have Anwser $score out of ${quizData.length} Correctly',
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ) ,)
        ],
      ),

    );
  }
}
