import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syllabuspu/components/action_button.dart';
import 'package:syllabuspu/components/gradient_box.dart';
import 'package:syllabuspu/components/rank_auth_button.dart';
import 'package:syllabuspu/provider/quiz_provider.dart';
import 'package:syllabuspu/screens/quiz_screen.dart';

import 'main_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<QuizProvider>(context);
//also above provider line can be written as 
// final provider = context.watch<QuizProvider>();

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, MainScreen.id);
          },
        ),
      ),
      body: SizedBox.expand(
        child: GradientBox(
          child: Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'हाजिरी जवाफ',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),

                SizedBox(
                  height: 20,
                ),
                if(provider.questions.isEmpty || provider.totalTime ==0)
                 Center(
                   child: CircularProgressIndicator()
                 ),
                               ActionButton(
                                title: 'Start',
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => QuizScreen(
                                          totalTime: provider.totalTime,
                                          questions: provider.questions)));
                                }),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Total Questions: ${provider.questions.length}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            
                    SizedBox(height:20),
                    RankAuthButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
