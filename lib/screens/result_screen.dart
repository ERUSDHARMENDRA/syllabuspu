import 'package:flutter/material.dart';
import 'package:syllabuspu/components/action_button.dart';
import 'package:syllabuspu/components/gradient_box.dart';
import 'package:syllabuspu/models/question.dart';

import 'quiz_screen.dart';

class ResultScreen extends StatelessWidget {
  static const String id = 'result-screen';
  const ResultScreen({
    Key? key,
    required this.score,
    required this.totalQuestions,
  }) : super(key: key);
  final int score;
  final int totalQuestions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: GradientBox(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Result: $score / $totalQuestions',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            SizedBox(
              height: 40,
            ),
            actionButton(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        QuizScreen(totalTime: 10, questions: question)));
              },
              title: 'Play Again',
            )
          ],
        )),
      ),
    );
  }
}
