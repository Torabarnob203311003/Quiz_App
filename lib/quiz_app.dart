import 'package:flutter/material.dart';
import 'package:quiz_app/Screens/question_screen.dart';
import 'package:quiz_app/Screens/widgets/result_screen.dart';
import 'package:quiz_app/data/quiz_data.dart';

import 'Screens/start_screen.dart';

class QuizApp extends StatefulWidget {
   const QuizApp({super.key});
 
   @override
   State<QuizApp> createState() => _QuizAppState();
 }
 
 class _QuizAppState extends State<QuizApp> {
  Widget?  currentScreen;
    List<String> userAnswers =[];// quiz_App(useranwser) >questionScreen >options(value --> useraw nser.add(value

  // sending this parameter to start screen

 void switchScreen(){

   setState(() {
     currentScreen = QuestionScreen ( onOptionSelected: _addAnswer,);
     //! changes to question Screen
   });
 }

 void restartQuiz(){
   userAnswers.clear();

   currentScreen = StartScreen(startQuiz: switchScreen);
 setState(() {});
 }
  void _addAnswer (String answer){

   userAnswers.add(answer);
   print('##answer = $userAnswers');
   if(userAnswers.length == quizData.length){

     currentScreen = ResultScreen(userAnswers: userAnswers,
     onQuizRestart:restartQuiz ,
     );
     setState(() {

     });
   }

  }
 @override
  void initState() {
   currentScreen =StartScreen(startQuiz: switchScreen);
    // TODO: implement initState
    super.initState();
  }


   @override
   Widget build(BuildContext context) {
     return MaterialApp(

       debugShowCheckedModeBanner: false,
       home: Scaffold(
         body: Container(
           width: double.infinity,
           decoration: BoxDecoration(
               gradient: LinearGradient(colors: [
                 Color.fromARGB(225, 95, 0, 158),
                 Color.fromARGB(225, 75, 0, 125),


               ],
                 begin: Alignment.topLeft,

                 end: Alignment.bottomRight,

               )

           ),
           child: currentScreen,
         ),


       ),

     );
   }
 }


