import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:syllabuspu/screens/home_screen.dart';
import 'package:syllabuspu/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash-screen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   @override
  void initState() {
    Timer(
        Duration(
          seconds: 3,
        ), () {
      FirebaseAuth.instance.authStateChanges().listen((user) {
        if (user == null) {
          Navigator.pushReplacementNamed(context, LoginScreen.id);
        } else {
          //if user has data on firestore..
          Navigator.pushReplacementNamed(context, HomeScreen.id);
        }
      });
    });

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.grey,
      Colors.white,

    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 50.0,
      fontFamily: 'Horizon',
    );

    return Scaffold(
      backgroundColor: Colors.cyan.shade900,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'images/logo.png',
              color: Colors.white,
              height: 140,
              width: 140,
            ),
            SizedBox(height: 10,),

            //need to animate text here
        AnimatedTextKit(
          animatedTexts: [
            ColorizeAnimatedText(
              'Syllabus for',
              textStyle: colorizeTextStyle,
              colors: colorizeColors,
            ),
            ColorizeAnimatedText(
              'Everyone',
              textStyle: colorizeTextStyle,
              colors: colorizeColors,
            ),
          ],
          isRepeatingAnimation: true,
          onTap: () {
            print("Event");
          },
          ),
          ],
        ),
      ),
    );
  }
}
