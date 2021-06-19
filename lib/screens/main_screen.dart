import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:syllabuspu/services/firebase_services.dart';
import 'notes_screen.dart';
import 'qbank_screen.dart';
import 'syllabus_screen.dart';

FirebaseServices _services = FirebaseServices();

class MainScreen extends StatefulWidget {
  static const String id = 'main-screen';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool _loading = false;
  String imageUrl = '';
  Widget _currentScreen = MainScreen(); //this is the first screen to open
  int _index = 0;

  @override
  void initState() {
    try {
      _services.banners.get().then((QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach((doc) {
          setState(() {
            print(doc['imageUrl']);
            imageUrl = doc['imageUrl'].toString();
          });
        });
      });
    } catch (e) {
      print(e.toString());
    }
    if (ConnectionState == ConnectionState.waiting) {
      _loading = true;
    } else {
      _loading = false;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.logout_outlined),
          ),
        ],
        title: Text(
          'Syllabus',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _loading==false
            ? Center(
              child: CircularProgressIndicator(
                  valueColor:
                      AlwaysStoppedAnimation<Color>(Theme.of(context).primaryColor),
                ),
            )
            : Container(
              child: Image.network(imageUrl),
            ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          //this button is to make add products for seller
          //so it will open first category screen to select the screen, where item belongs
        },
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(Icons.support_agent_rounded),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 0, //we will see this later
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //left side of floating button
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        _index = 0;
                        _currentScreen = MainScreen();
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(_index == 0 ? Icons.home : Icons.home_outlined),
                        Text(
                          'HOME',
                          style: TextStyle(
                              color: _index == 0 ? color : Colors.black,
                              fontWeight: _index == 0
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),

//syllabus button
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        _index = 1;
                        _currentScreen = SyllabusScreen();
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(_index == 1
                            ? CupertinoIcons.book_circle_fill
                            : CupertinoIcons.book_circle),
                        Text(
                          'SYLLABUS',
                          style: TextStyle(
                              color: _index == 1 ? color : Colors.black,
                              fontWeight: _index == 1
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              //right side of floating button
              Row(
                children: [
                  //my ads
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        _index = 2;
                        _currentScreen = NotesScreen();
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(_index == 2
                            ? CupertinoIcons.book_fill
                            : CupertinoIcons.book),
                        Text(
                          'NOTES',
                          style: TextStyle(
                              color: _index == 2 ? color : Colors.black,
                              fontWeight: _index == 2
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),

                  //Q-bank
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        _index = 3;
                        _currentScreen = QBankScreen();
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(_index == 3
                            ? CupertinoIcons.question_square_fill
                            : CupertinoIcons.question_square),
                        Text(
                          'Q-Bank',
                          style: TextStyle(
                              color: _index == 3 ? color : Colors.black,
                              fontWeight: _index == 3
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      
     drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("KODE MAFIA"),
              accountEmail: Text("Kodemafia008@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Theme.of(context).platform == TargetPlatform.iOS ? Colors.deepPurple:Colors.white,
                child: Text("K"),
              ),
              otherAccountsPictures:<Widget> [
                CircleAvatar(
                  backgroundColor: Theme.of(context).platform == TargetPlatform.iOS ? Colors.deepPurple:Colors.white,
                  child: Text("M"),
                ),
              ],
            ),

            ListTile(
              title: Text("Syllabus"),
              trailing: Icon(Icons.arrow_forward_rounded),
              onTap: ()  {
                Navigator.of(context).pop();
           
              },
            ),

            ListTile(
              title: Text("Notes"),
              trailing: Icon(Icons.arrow_forward_rounded),
              onTap: ()  {
                Navigator.of(context).pop();
          
              },
            ),

            Divider(),

            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
              onTap: ()=> Navigator.of(context).pop(),
            ),

          ],
        ),
      ),
    );
  }
}
