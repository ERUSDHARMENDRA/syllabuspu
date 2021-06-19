import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syllabuspu/components/gradient_box.dart';
import 'package:syllabuspu/models/question.dart';
import 'package:syllabuspu/screens/home_screen.dart';
import 'package:syllabuspu/screens/result_screen.dart';

class QuizScreen extends StatefulWidget {
  static const String id = 'quiz-screen';
  const QuizScreen({Key? key, required this.totalTime, required this.questions})
      : super(key: key);
  final int totalTime;
  final List<Question> questions;

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late int _currentTime;
  late Timer _timer;
  // ignore: unused_field
  int correctAnswer = 0;
  String _selectedAnswer = '';
  int _currentIndex = 0;
  int _score = 0;

  @override
  void initState() {
    super.initState();
    _currentTime = widget.totalTime;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      print(_currentTime);
      setState(() {
        _currentTime -= 1;
      });
      if (_currentTime == 0) {
        _timer.cancel();
        pushResultScr(context);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = widget.questions[_currentIndex];
    return Scaffold(
      appBar: AppBar(leading: BackButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, HomeScreen.id);
        },
      )),
      body: GradientBox(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 40,
            ),
            SizedBox(
                height: 40,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        LinearProgressIndicator(
                            value: _currentTime / widget.totalTime),
                        Center(
                            child: Text(
                          _currentTime.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 26),
                        )),
                      ],
                    ))),
            SizedBox(
              height: 40,
            ),
            Text('प्रश्न ',
                style: TextStyle(fontSize: 40, color: Colors.white)),
            SizedBox(
              height: 30,
            ),
            Text(
              currentQuestion.question,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            Spacer(),
            Expanded(
              child: ListView.builder(
                  itemCount: currentQuestion.answers.length,
                  itemBuilder: (context, index) {
                    final answer = currentQuestion.answers[index];
                    return AnswerTile(
                        isSelected: answer == _selectedAnswer,
                        correctAnswer: currentQuestion.correctAnswer,
                        onTap: () {
                          setState(() {
                            _selectedAnswer = answer;
                          });
                          if (answer == currentQuestion.correctAnswer) {
                            _score++;
                          }
                          Future.delayed(Duration(milliseconds: 200), () {
                            if (_currentIndex == widget.questions.length - 1) {
                              pushResultScr(context);
                              return;
                            }
                            setState(() {
                              _currentIndex++;
                              _selectedAnswer = '';
                            });
                          });
                        },
                        answer: answer);
                  }),
            )
          ]),
        ),
      ),
    );
  }

  void pushResultScr(BuildContext context) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => ResultScreen(
              totalQuestions: widget.questions.length,
              totalTime: widget.totalTime,
              score: _score,
              questions: widget.questions,
            )));
  }
}

class AnswerTile extends StatelessWidget {
  final bool isSelected;
  final String correctAnswer;
  final String answer;
  final Function onTap;

  const AnswerTile(
      {Key? key,
      required this.isSelected,
      required this.correctAnswer,
      required this.onTap,
      required this.answer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      child: ListTile(
        onTap: () => onTap(),
        title: Text(answer,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontSize: 18,
            )),
      ),
    );
  }

  Color get cardColor {
    if (!isSelected) return Colors.white;
    if (isSelected && answer == correctAnswer) {
      return Colors.green;
    }
    return Colors.redAccent;
  }
}
