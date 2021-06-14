import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:syllabuspu/services/firebase_services.dart';

FirebaseServices _services = FirebaseServices();
String imageUrl =
    'https://firebasestorage.googleapis.com/v0/b/pu-syllabus-c12f8.appspot.com/o/banners%2Fpexels-luis-gomes-546819.jpg?alt=media&token=34a8d026-363b-4bb6-8608-a64489f7b14e';

class HomeScreen extends StatefulWidget {
  static const String id = 'home-screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Syllabus'),
      ),
      body: StreamBuilder(
        stream: _services.banners.snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData) {
            return ListView(
              children: snapshot.data!.docs
                  .map((e) => ListTile(
                    title: Text('imageUrl'),
                        subtitle: Text(e['imageUrl']),
                      ))
                  .toList(),
            );
          } else {
            return Center(
              child: Text('Something went wrong '),
            );
          }
        },
      ),
    );
  }
}
