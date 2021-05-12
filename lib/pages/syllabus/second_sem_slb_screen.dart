import 'package:flutter/material.dart';

import 'be_syllabus_main_page.dart';

class SecondSmSlbScn extends StatefulWidget {
  static const String id = 'second-sem-com-slb';

  @override
  _SecondSmSlbScnState createState() => _SecondSmSlbScnState();
}

class _SecondSmSlbScnState extends State<SecondSmSlbScn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Semester Computer '),
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
              child: Image.asset('images/syllabus/2nd/firstyearsyllabus_20.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/2nd/firstyearsyllabus_21.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/2nd/firstyearsyllabus_22.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/2nd/firstyearsyllabus_23.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/2nd/firstyearsyllabus_24.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/2nd/firstyearsyllabus_25.jpg'),
            ),
            SizedBox(
              height: 3,
            ),


            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/2nd/firstyearsyllabus_26.jpg'),
            ),
            SizedBox(
              height: 3,
            ),


            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/2nd/firstyearsyllabus_27.jpg'),
            ),
            SizedBox(
              height: 3,
            ),


            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/2nd/firstyearsyllabus_28.jpg'),
            ),
            SizedBox(
              height: 3,
            ),


            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/2nd/firstyearsyllabus_29.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/2nd/firstyearsyllabus_30.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/2nd/firstyearsyllabus_31.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/2nd/firstyearsyllabus_32.jpg',),
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
