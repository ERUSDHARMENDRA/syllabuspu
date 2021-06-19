import 'package:flutter/material.dart';
import 'package:syllabuspu/components/action_button.dart';
import 'package:syllabuspu/components/gradient_box.dart';
import 'package:syllabuspu/models/question.dart';
import 'package:syllabuspu/screens/quiz_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: GradientBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'हाजिरी जवाफ',
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
              SizedBox(
                height: 40,
              ),
              actionButton(
                  title: 'Start',
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            QuizScreen(totalTime: 10, questions: question)));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

