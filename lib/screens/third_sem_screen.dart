import 'package:flutter/material.dart';
import 'package:syllabuspu/screens/home_screen.dart';

class ThirdSemScreen extends StatefulWidget {
  static const String id = 'home-screen';

  @override
  _ThirdSemScreenState createState() => _ThirdSemScreenState();
}

class _ThirdSemScreenState extends State<ThirdSemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('3rd Semester Computer '),
        leading: InkWell(
          onTap: (){
            Navigator.pushReplacementNamed(context, HomeScreen.id);
          },
            child: Icon(Icons.arrow_back
            ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/3rd sem/3rdsem1.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/3rd sem/3rdsemsyllabus2.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/3rd sem/3rdsemsyllabus3.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/3rd sem/3rdsemsyllabus4.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/3rd sem/3rdsemsyllabus5.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/3rd sem/3rdsemsyllabus6.jpg'),
            ),
            SizedBox(
              height: 3,
            ),


            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/3rd sem/3rdsemsyllabus7.jpg'),
            ),
            SizedBox(
              height: 3,
            ),


            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/3rd sem/3rdsemsyllabus8.jpg'),
            ),
            SizedBox(
              height: 3,
            ),


            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/3rd sem/3rdsemsyllabus9.jpg'),
            ),
            SizedBox(
              height: 3,
            ),


            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/3rd sem/3rdsemsyllabus10.jpg'),
            ),
            SizedBox(
              height: 3,
            ),

            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset('images/3rd sem/3rdsemsyllabus11.jpg',scale: 1,),
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
