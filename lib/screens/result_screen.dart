import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syllabuspu/components/action_button.dart';
import 'package:syllabuspu/components/gradient_box.dart';
import 'package:syllabuspu/models/question.dart';
import 'package:syllabuspu/screens/home_screen.dart';

import 'quiz_screen.dart';

class ResultScreen extends StatelessWidget {
  static const String id = 'result-screen';

  const ResultScreen({
    Key? key,
    required this.score,
    required this.totalQuestions,
    required this.questions,
    required this.totalTime,
  }) : super(key: key);

  final int score;
  final int totalQuestions;
  final List<Question> questions;
  final int totalTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: GradientBox(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Result: $score / ${questions.length}',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            SizedBox(
              height: 40,
            ),
            actionButton(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        QuizScreen(totalTime: totalTime, questions: questions)));
              },
              title: 'Play Again',
            ),
            actionButton(
                title: 'Exit',
                onTap: () {
                  Navigator.pushReplacementNamed(context, HomeScreen.id);
                }),
            SizedBox(
              height: 80,
            ),
            score == questions.length
                ? Text('Excellent Performance',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold))
                : Text(''),
          ],
        )),
      ),
    );
  }
}
