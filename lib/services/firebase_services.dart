import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseServices {
  User? user = FirebaseAuth.instance.currentUser;

  CollectionReference syllabus =
      FirebaseFirestore.instance.collection('pusyllabus');
  CollectionReference banners =
      FirebaseFirestore.instance.collection('banners');
}
