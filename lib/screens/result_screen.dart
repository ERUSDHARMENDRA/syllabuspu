import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syllabuspu/components/action_button.dart';
import 'package:syllabuspu/components/gradient_box.dart';
import 'package:syllabuspu/models/question.dart';
import 'package:syllabuspu/screens/home_screen.dart';
import 'quiz_screen.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({
    Key? key,
    required this.score,
    required this.totalQuestions,
    required this.questions,
    required this.totalTime,
  }) : super(key: key);

  static const String id = 'result-screen';

  final List<Question> questions;
  final int score;
  final int totalQuestions;
  final int totalTime;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  void initState() {
    _updateHighScore();
    super.initState();
  }

Future<void> _updateHighScore() async {
    final authUser = FirebaseAuth.instance.currentUser;
    if (authUser == null) return;

    final userRef =
        FirebaseFirestore.instance.collection('quizusers').doc(authUser.uid);

    final userDoc = await userRef.get();
    if (userDoc.exists) {
      final user = userDoc.data();
      if (user == null) return;
      final lastHighScore = user['score'];

      if (lastHighScore >= widget.score) {
        return;
      }
      userRef.update({
        'score': widget.score,
      });
      return;
    }
    userRef.set({
      'email': authUser.email,
      'phone': authUser.phoneNumber,
      'photoUrl': authUser.photoURL,
      'displayName': authUser.displayName,
      'score': widget.score,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: GradientBox(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Result: ${widget.score} / ${widget.questions.length}',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            SizedBox(
              height: 40,
            ),
            ActionButton(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => QuizScreen(
                        totalTime: widget.totalTime,
                        questions: widget.questions)));
              },
              title: 'Play Again',
            ),
            ActionButton(
                title: 'Exit',
                onTap: () {
                  Navigator.pushReplacementNamed(context, HomeScreen.id);
                }),
            SizedBox(
              height: 80,
            ),
            widget.score == widget.questions.length
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
