import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:syllabuspu/screens/home_screen.dart';
import 'package:syllabuspu/screens/login_screen.dart';
import 'package:syllabuspu/screens/spash_screen.dart';
import 'package:syllabuspu/screens/third_sem_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PU Syllabus',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: defaultTargetPlatform == TargetPlatform.iOS ? Colors.white :null),
           initialRoute: SplashScreen.id,

        routes: {
          SplashScreen.id: (context) => SplashScreen(),
          HomeScreen.id:(context)=> HomeScreen(),
          LoginScreen.id:(context)=>LoginScreen(),
          ThirdSemScreen.id:(context)=>ThirdSemScreen(),
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ThirdSemScreen(),
    );
  }
}