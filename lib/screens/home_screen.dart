import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:syllabuspu/screens/login_screen.dart';
import 'package:syllabuspu/widgets/home_page_body.dart';

//HomePage Stateful Widget
class HomeScreen extends StatefulWidget {
  static const String id = ' home-screen';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: Text("PU Syllabus"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [
          IconButton(
            tooltip: 'Search',
            enableFeedback: true,
            icon: Icon(Icons.search),
            onPressed: () {
              //will implement later on
            },
          ),
          IconButton(
            tooltip: 'Log Out',
            enableFeedback: true,
            icon: Icon(Icons.logout),
            onPressed: () {
              FirebaseAuth.instance.signOut();
              Navigator.pushReplacementNamed(context, LoginScreen.id);
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(user!.displayName!),
              accountEmail: Text(user.email!),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(user.photoURL!),
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Colors.deepPurple
                        : Colors.white,
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor:
                      Theme.of(context).platform == TargetPlatform.iOS
                          ? Colors.deepPurple
                          : Colors.white,
                  backgroundImage: NetworkImage(user.photoURL!),
                ),
              ],
            ),
            ListTile(
              title: Text("Syllabus"),
              trailing: Icon(Icons.arrow_forward_rounded),
              onTap: () {},
            ),
            ListTile(
              title: Text("Notes"),
              trailing: Icon(Icons.arrow_forward_rounded),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            Divider(),
            ListTile(
                title: Text("Settings"),
                trailing: Icon(CupertinoIcons.gear_solid),
                onTap: () {}),
            Divider(),
            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: HomePageBody(),
    );
  }
}
//EndOf HomePage Stateful Widget