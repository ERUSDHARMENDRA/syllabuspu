import 'package:flutter/material.dart';

import 'be_syllabus_main_page.dart';

class FifthSmSlbScn extends StatefulWidget {
  static const String id = 'fifth-sem-com-slb';

  @override
  _FifthSmSlbScnState createState() => _FifthSmSlbScnState();
}

class _FifthSmSlbScnState extends State<FifthSmSlbScn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fifth Semester Computer '),
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
              child: Image.asset('images/syllabus/5th/5thsem_1.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/5th/5thsem_2.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/5th/5thsem_3.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/5th/5thsem_4.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/5th/5thsem_5.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/5th/5thsem_6.jpg'),
            ),
            SizedBox(
              height: 3,
            ),


            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/5th/5thsem_7.jpg'),
            ),
            SizedBox(
              height: 3,
            ),


            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/5th/5thsem_8.jpg'),
            ),
            SizedBox(
              height: 3,
            ),


            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/5th/5thsem_9.jpg'),
            ),
            SizedBox(
              height: 3,
            ),


            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/5th/5thsem_10.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/5th/5thsem_11.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/5th/5thsem_12.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/5th/5thsem_13.jpg',),
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
