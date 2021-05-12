import 'package:flutter/material.dart';

import 'be_syllabus_main_page.dart';

class FourthSmSlbScn extends StatefulWidget {
  static const String id = 'fourth-sem-com-slb';

  @override
  _FourthSmSlbScnState createState() => _FourthSmSlbScnState();
}

class _FourthSmSlbScnState extends State<FourthSmSlbScn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fourth Semester Computer '),
        leading: BackButton(
          onPressed: (){
            Navigator.pushReplacementNamed(context, BESyllabusMainPage.id);
          },
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/4th/4thsem_1.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/4th/4thsem_2.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/4th/4thsem_3.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/4th/4thsem_4.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/4th/4thsem_5.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/4th/4thsem_6.jpg'),
            ),
            SizedBox(
              height: 3,
            ),


            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/4th/4thsem_7.jpg'),
            ),
            SizedBox(
              height: 3,
            ),


            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/4th/4thsem_8.jpg'),
            ),
            SizedBox(
              height: 3,
            ),


            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/4th/4thsem_9.jpg'),
            ),
            SizedBox(
              height: 3,
            ),


            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/4th/4thsem_10.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/4th/4thsem_11.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/4th/4thsem_12.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
          ],
        ),
      ),
    );
  }
}
