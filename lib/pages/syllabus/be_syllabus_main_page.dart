import 'package:flutter/material.dart';
import 'package:syllabuspu/pages/syllabus/fifth_sem_slb_screen.dart';
import 'package:syllabuspu/pages/syllabus/second_sem_slb_screen.dart';
import 'package:syllabuspu/pages/syllabus/seventh_sem_slb_screen.dart';
import 'package:syllabuspu/pages/syllabus/sixth_sem_slb_screen.dart';
import 'package:syllabuspu/pages/syllabus/third_sem_syllabus_screen.dart';
import 'package:syllabuspu/screens/home_screen.dart';

import 'eight_sem_slb_screen.dart';
import 'first_sem_syllabus_screen.dart';
import 'fourth_sem_slb_screen.dart';

class BESyllabusMainPage extends StatefulWidget {
  static const String id = 'syllabus-main-page';

  @override
  _BESyllabusMainPageState createState() => _BESyllabusMainPageState();
}

class _BESyllabusMainPageState extends State<BESyllabusMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: (){
            Navigator.pushReplacementNamed(context,HomeScreen.id);
          },
        ),
        title: Text('B.E Computer Engineering'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, FirstSmSlbScn.id);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context).primaryColorDark,
                              blurRadius: 2.0,
                            )
                          ]),
                      child: Center(child: Text('First Semester',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, SecondSmSlbScn.id);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context).primaryColorDark,
                              blurRadius: 2.0,
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Second Semester',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, ThirdSmSlbScn.id);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context).primaryColorDark,
                              blurRadius: 2.0,
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Third Semester',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, FourthSmSlbScn.id);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context).primaryColorDark,
                              blurRadius: 2.0,
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Fourth Semester',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, FifthSmSlbScn.id);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context).primaryColorDark,
                              blurRadius: 2.0,
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Fifth Semester',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, SixthSmSlbScn.id);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context).primaryColorDark,
                              blurRadius: 2.0,
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Sixth Semester',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, SeventhSmSlbScn.id);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context).primaryColorDark,
                              blurRadius: 2.0,
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Seventh Semester',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, EightSmSlbScn.id);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Theme.of(context).primaryColorDark,
                              blurRadius: 2.0,
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Eighth Semester',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
