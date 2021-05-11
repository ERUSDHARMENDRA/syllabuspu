import 'dart:async';

import 'package:flutter/material.dart';
import 'package:syllabuspu/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String id='splash-screen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(
        Duration(
          seconds: 3,
        ),(){
    Navigator.pushReplacementNamed(context, HomeScreen.id);
    }
    );
        super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.asset('images/logo.png'),
                ),
              ),

              Text('Purwanchal University', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 30),),
            ],
          ),
        ),
      ),
    );
  }
}

