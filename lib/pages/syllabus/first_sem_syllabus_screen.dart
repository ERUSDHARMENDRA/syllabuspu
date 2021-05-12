import 'package:flutter/material.dart';
import 'be_syllabus_main_page.dart';

class FirstSmSlbScn extends StatefulWidget {
  static const String id = 'first-sem-com-slb';

  @override
  _FirstSmSlbScnState createState() => _FirstSmSlbScnState();
}

class _FirstSmSlbScnState extends State<FirstSmSlbScn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Semester Computer '),
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
              child: Image.asset('images/syllabus/1st/firstyearsyllabus_1.jpg',),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/1st/firstyearsyllabus_2.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/1st/firstyearsyllabus_3.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/1st/firstyearsyllabus_4.jpg',),
            ),
            SizedBox(
              height: 3,
            ),ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/1st/firstyearsyllabus_5.jpg',),
            ),
            SizedBox(
              height: 3,
            ),ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/1st/firstyearsyllabus_6.jpg',),
            ),
            SizedBox(
              height: 3,
            ),ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/1st/firstyearsyllabus_7.jpg',),
            ),
            SizedBox(
              height: 3,
            ),ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/1st/firstyearsyllabus_8.jpg',),
            ),
            SizedBox(
              height: 3,
            ),ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/1st/firstyearsyllabus_9.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/1st/firstyearsyllabus_10.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/1st/firstyearsyllabus_11.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/1st/firstyearsyllabus_12.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/1st/firstyearsyllabus_13.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/1st/firstyearsyllabus_14.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/1st/firstyearsyllabus_15.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/1st/firstyearsyllabus_16.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/1st/firstyearsyllabus_17.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/1st/firstyearsyllabus_18.jpg',),
            ),
            SizedBox(
              height: 3,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/1st/firstyearsyllabus_19.jpg',),
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
