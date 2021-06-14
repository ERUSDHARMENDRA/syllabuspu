import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseServices {
  User? user = FirebaseAuth.instance.currentUser;
  

  CollectionReference syllabus =
      FirebaseFirestore.instance.collection('pusyllabus');
  CollectionReference banners =
      FirebaseFirestore.instance.collection('banners');

  Future<DocumentSnapshot> getImageUrl() async {
    //String is used as return to return address
    // String imageUrl;
    DocumentSnapshot imageUrl = await banners.doc(banners.id).get();

    return imageUrl;
  }
}
