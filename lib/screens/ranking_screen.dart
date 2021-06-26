import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:syllabuspu/components/action_button.dart';
import 'package:syllabuspu/components/gradient_box.dart';
import 'home_screen.dart';

class RankingScreen extends StatelessWidget {
  const RankingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              Expanded(
                child: StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection('quizusers')
                      .orderBy('score', descending: true)
                      .snapshots(),
                  builder: (BuildContext context, snapshot) {
                    if (!snapshot.hasData)
                      return Center(child: CircularProgressIndicator());
                    final users = snapshot.data!.docs;
                    return ListView.builder(
                        itemCount: users.length,
                        itemBuilder: (context, index) {
                          return Card(
                            child: ListTile(
                              leading: CircleAvatar(
                                  child: Image.network(
                                      users[index]['photoUrl'].toString())),
                              title: Text(users[index]['displayName']),
                              trailing: Text(
                                users[index]['score'].toString(),
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          );
                        });
                  },
                ),
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
}
