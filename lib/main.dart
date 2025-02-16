import 'package:counterapp/Quiz.dart';
import 'package:counterapp/Result.dart';
import 'package:flutter/material.dart';

/// dart mai varialble mai value store nhi hoti balki value ka address store hota h

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    return _MyWidgetstate(); // _ at start makes class private in flutter
  }
}

class _MyWidgetstate extends State<MyWidget> {
  final List<Map<String, Object>> questions = const [
    /// Main Difference between const and final is final varialble ki values mai runtime mai change nhi hoti or const variable ki value complie time
    /// [yani code likhta time] or runtime pe change nhi hoti
    // {} is a short hand notation for Map() Class , Map() Class contains Key : Value pairs
    {
      "Question": "What programming language is used to develop Flutter applications?",
      "Options": [
        {'text': "Java", 'Score': 0},
        {'text': "Kotlin", 'Score': 0},
        {'text': "Dart", 'Score': 10},
      ],
    },

    {
      "Question": 'Which widget is used as the root of a Flutter application?',
      "Options": [
        {'text': " Scaffold", 'Score': 0},
        {'text': "MaterialApp", 'Score': 10},
        {'text': "Container", 'Score': 0},
      ],
    },

    {
      "Question": 'What is the purpose of the setState() method in Flutter?',
      "Options": [
        {'text': "To create a new screen", 'Score': 0},
        {'text': "To update the UI when the state of a StatefulWidget changes", 'Score': 10},
      ],
    },

    {
      "Question": 'What command is used to create a new Flutter project?',
      "Options": [
        {'text': "flutter new project", 'Score': 0},
        {'text': "flutter create my_project", 'Score': 10},
        {'text': "flutter start app", 'Score': 0},
        {'text': " flutter generate project", 'Score': 0},
      ],
    },
  ];

  var questionIndex = 0;
  int optionIndex = 0;
  int totalScore = 0;

  void questionAnswers(int score) {
    totalScore = totalScore + score;

    setState(() {
      questionIndex = questionIndex + 1;
      optionIndex = optionIndex + 1;
    });

    if (questionIndex < questions.length) {
      print('We have more question');
    }

    print(questionIndex);
    print(optionIndex);
    print('Answer Choosen');
    print(totalScore);
  }

  void resetQuiz() {


    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
    // setState() {
    //   questionIndex = 0;
    //   totalScore = 0;
    // }
    
    print(totalScore);
    print(questionIndex);

  }
  

  @override
  Widget build(BuildContext context) {
    // List<String> Options = ["Hello", "Red", "2", "12.7", 'true'];

    int i = 0;
    void incrementButton() {
      i++;
      print(i);
    }

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 0, 0, 0),
              title: const Center(child:  Text(
                "Quiz",
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    backgroundColor: Color.fromARGB(23, 140, 10, 10)),
              ),)
            ),
            body: questionIndex < questions.length
                ? // ? is a ternary operator which is used to check the condition {if condition is true then execute the code after ? else execute the code after :}

                Quix(
                    questionAnswers: questionAnswers,
                    questionIndex: questionIndex,
                    questions: questions,
                  )
                : // : issa aage else statement ka code h
                Result(
                    resetQuiz: resetQuiz,
                    totalScore: totalScore) // yaha bas widget ki class ko call kiya h
            )
            );
  }
}
