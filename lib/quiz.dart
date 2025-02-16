
import 'package:flutter/material.dart';
import 'questions_Widget.dart';
import 'answers_Widget.dart';

class Quix extends StatelessWidget {
  final Function questionAnswers;
  final List<Map<String, dynamic>> questions;
  final int questionIndex;

 const Quix({
            required this.questionAnswers, 
            required this.questions,
            required this.questionIndex,
            super.key
            }
            );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Question_Widget(questions[questionIndex % 4]["Question"]),

        // options Widget
        // ... Spread operator
        ...(questions[questionIndex % 4]['Options'] as List<Map<String,dynamic>>).map<dynamic>(
            //anonyomous function jo har question k options List<String> answers_widget mai bhej raha h
            (answersWidget) {
          return Options_Widget(()=>questionAnswers(answersWidget['Score']), answersWidget["text"]);
        })
      ],

      // ,ElevatedButton(
      //   onPressed: questionAnswers,
      //   child: Text(Options[optionIndex % 4]),
      // ),
      // ElevatedButton(
      //   onPressed: () => {print('data')},
      //   child: const Text("Button 02"),
      // ),
      // ElevatedButton(
      //     onPressed: questionAnswers, // questionAnswers is a pointer which tell that this function needs to be executed once buttone is pressed
      //     child: Text(Options[optionIndex % 4+1]),),
      // ElevatedButton(
      //   onPressed: incrementButton,
      //   child: const Text("Button 04"),
      // ),
    );
  }//build widget
} // stateless widget






