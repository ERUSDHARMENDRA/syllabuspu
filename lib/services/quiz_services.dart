import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:syllabuspu/models/question.dart';
import 'package:syllabuspu/models/quiz_user.dart';

class QuizService {
  static Future<List<Question>> getAllQuestions() async {
    final questionRef = FirebaseFirestore.instance.collection('questions');
    final questionDoc = await questionRef.get();

    return questionDoc.docs
        .map((e) => Question.fromQueryDocumentSnapshot(e))
        .toList();
  }

  static Future<int> getTotalTime() async {
    final configRef = FirebaseFirestore.instance.collection('config');
    final configDoc = await configRef.get();

    final config = configDoc.docs.first;
    return config['key'];
  }

  static Future<List<QuizUser>> getAllUsers() async {
    final usersRef = FirebaseFirestore.instance
        .collection('quizusers')
        .orderBy('score', descending: true);
    final usersDoc = await usersRef.get();
    return usersDoc.docs
        .map((e) => QuizUser.fromQueryDocumentSnapshot(e))
        .toList();
  }

  static Future<void> updateHighScore(int currentScore) async {
    final authUser = FirebaseAuth.instance.currentUser;
    if (authUser == null) return;

    final userRef =
        FirebaseFirestore.instance.collection('quizusers').doc(authUser.uid);

    final userDoc = await userRef.get();
    if (userDoc.exists) {
      final user = userDoc;
      if (user == null) return;
      final lastHighScore = user['score'];

      if (lastHighScore >= currentScore) {
        return;
      }
      userRef.update({
        'score': currentScore,
      });
      return;
    }
    userRef.set({
      'email': authUser.email,
      'phone': authUser.phoneNumber,
      'photoUrl': authUser.photoURL,
      'displayName': authUser.displayName,
      'score': currentScore,
    });
  }
}
