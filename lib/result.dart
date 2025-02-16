import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz; // _ at start makes class private in flutter

  const Result({required this.totalScore, required this.resetQuiz, super.key});
//  const Result({@required._resetQuiz, this.totalScore,
//  super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

           

             const  Text(
                'You did it!',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              
              const SizedBox(height: 250),

              ElevatedButton(onPressed: resetQuiz, child: const Text('Restart Quiz!')),

              const SizedBox(height: 250),

              Text('Your Total Score is $totalScore', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
            ],
          ),
        )
      ],
    );
  }
}
