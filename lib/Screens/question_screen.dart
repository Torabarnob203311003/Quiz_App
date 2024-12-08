import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
mainAxisAlignment: MainAxisAlignment.center,
      children: [
                const Text("What is Flutter ?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        const SizedBox(height:20),

        Container(
         // margin: EdgeInsets.symmetric(vertical: 25),
          padding: EdgeInsets.symmetric(horizontal: 20),

          width: double.infinity,
          child: ElevatedButton(onPressed:(){},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255,44,14,55),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              )
            ), child: Text('Option'),
        ),

        )
      ],




    );
  }
}
