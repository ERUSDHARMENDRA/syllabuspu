import 'package:flutter/material.dart';
import 'be_syllabus_main_page.dart';

class ThirdSmSlbScn extends StatefulWidget {
  static const String id = 'third-sem-com-slb';

  @override
  _ThirdSmSlbScnState createState() => _ThirdSmSlbScnState();
}

class _ThirdSmSlbScnState extends State<ThirdSmSlbScn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Semester Computer '),
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
              child: Image.asset('images/syllabus/3rd/3rdsem1.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/3rd/3rdsemsyllabus2.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/3rd/3rdsemsyllabus3.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/3rd/3rdsemsyllabus4.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/3rd/3rdsemsyllabus5.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/3rd/3rdsemsyllabus6.jpg'),
            ),
            SizedBox(
              height: 3,
            ),


            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/3rd/3rdsemsyllabus7.jpg'),
            ),
            SizedBox(
              height: 3,
            ),


            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/3rd/3rdsemsyllabus8.jpg'),
            ),
            SizedBox(
              height: 3,
            ),


            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/3rd/3rdsemsyllabus9.jpg'),
            ),
            SizedBox(
              height: 3,
            ),


            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/3rd/3rdsemsyllabus10.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/syllabus/3rd/3rdsemsyllabus11.jpg',),
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
