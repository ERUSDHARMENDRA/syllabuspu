import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syllabuspu/components/action_button.dart';
import 'package:syllabuspu/components/gradient_box.dart';
import 'package:syllabuspu/models/question.dart';
import 'package:syllabuspu/screens/quiz_screen.dart';
import 'package:syllabuspu/services/firebase_services.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FirebaseServices _services = FirebaseServices();

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
              StreamBuilder<QuerySnapshot>(
                  stream: _services.questions.snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.white),),
                      );
                    }
                    final questionDocs = snapshot.data!.docs;
                    final questions = questionDocs
                        .map((e) => Question.fromQueryDocumentSnapshot(e))
                        .toList();
          
                    return StreamBuilder<QuerySnapshot>(
                      stream: _services.totalTime.snapshots(),
                        builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        if(ConnectionState==ConnectionState.waiting){
                          return Center(
                                child: CircularProgressIndicator(),
                              );
                        }
                      }
                      final configDocs = snapshot.data!.docs.first.data()
                          as Map<String, dynamic>;
                      final totalTime = configDocs['key'];
                      return Column(
                        children: [
                          actionButton(
                              title: 'Start',
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => QuizScreen(
                                        totalTime: totalTime,
                                        questions: questions)));
                              }),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Total Questions: ${questions.length}',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      );
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
