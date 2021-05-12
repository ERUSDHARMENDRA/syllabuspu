import 'package:flutter/material.dart';

import 'be_syllabus_main_page.dart';

class SixthSmSlbScn extends StatefulWidget {
  static const String id = 'second-sem-com-slb';

  @override
  _SixthSmSlbScnState createState() => _SixthSmSlbScnState();
}

class _SixthSmSlbScnState extends State<SixthSmSlbScn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sixth Semester Computer '),
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
              child: Image.asset('images/syllabus/6th/6th-sem_1.jpg',),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/6th/6th-sem_2.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/6th/6th-sem_3.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/6th/6th-sem_4.jpg',),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/6th/6th-sem_5.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/6th/6th-sem_6.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/6th/6th-sem_7.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/6th/6th-sem_8.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/6th/6th-sem_9.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/6th/6th-sem_10.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/6th/6th-sem_11.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/6th/6th-sem_12.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/6th/6th-sem_13.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/6th/6th-sem_14.jpg',),
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
