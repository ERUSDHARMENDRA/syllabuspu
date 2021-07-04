import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:provider/src/provider.dart';
import 'package:syllabuspu/components/action_button.dart';
import 'package:syllabuspu/components/gradient_box.dart';
import 'package:syllabuspu/provider/quiz_provider.dart';
import 'home_screen.dart';

class RankingScreen extends StatefulWidget {
  const RankingScreen({Key? key}) : super(key: key);

  @override
  State<RankingScreen> createState() => _RankingScreenState();
}

class _RankingScreenState extends State<RankingScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = context.watch<QuizProvider>();
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, HomeScreen.id);
          },
        ),
      ),
      body: GradientBox(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Text('Ranking',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  )),
              SizedBox(
                height: 40,
              ),
              if (provider.users.isEmpty)
                Center(child: CircularProgressIndicator()),
              Expanded(
                child: ListView.builder(
                    itemCount: provider.users.length,
                    itemBuilder: (context, index) {
                      final user = provider.users[index];
                      return Card(
                        child: ListTile(
                          leading:
                              CircleAvatar(child: Image.network(user.photoUrl)),
                          title: Text(user.name),
                          trailing: Text(
                            user.score.toString(),
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      );
                    }),
              ),
              ActionButton(
                  onTap: () {
                    Navigator.pushNamed(context, HomeScreen.id);
                  },
                  title: 'Exit'),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    final provider = context.read<QuizProvider>();
    provider.getAllUsers();
    super.initState();
  }
}
