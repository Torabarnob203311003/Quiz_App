import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  const Option({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
        ), child: const Text('Option'),
      ),

    );
  }
}