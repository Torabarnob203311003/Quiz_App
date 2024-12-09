import 'package:flutter/material.dart';

import '../widgets/option.dart';

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

        Option(),
        const SizedBox(height:10),
        Option(),
        const SizedBox(height:10),
        Option(),
        const SizedBox(height:10),
        Option()
      ],




    );
  }
}


