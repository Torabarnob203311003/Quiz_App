import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  const Option({
    super.key,required this .text,required this.onetap
  });
  final String text;
  final void Function ( ) onetap;

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 20),
     // padding: const EdgeInsets.symmetric(vertical: 20),

      width: double.infinity,

      child: ElevatedButton(onPressed:onetap,

        style: ElevatedButton.styleFrom(
        

            backgroundColor: const Color.fromARGB(255,44,14,55),
            foregroundColor: Colors.white,


            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),


            )

        ), child: Text(text),
      ),

    );
  }
}