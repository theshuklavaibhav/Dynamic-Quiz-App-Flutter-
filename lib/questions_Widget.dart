import 'package:flutter/material.dart';

class Question_Widget extends StatelessWidget {
  final String questionText;

  const Question_Widget(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin:const  EdgeInsets.all(30),
      width: double.infinity,
      child:  Text(questionText
      ,style: const  TextStyle(fontSize: 22),
      textAlign: TextAlign.center,
      
    ),
    );
  }
}
