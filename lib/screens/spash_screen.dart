import 'dart:async';
import 'package:flutter/material.dart';
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
          seconds: 4,
        ), () {
      Navigator.pushReplacementNamed(context, LoginScreen.id);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff02354B),
      body: Center(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('images/logo.png'),
                ),
              ),

              Column(
                children: [
                  Text('Purwanchal University',style: TextStyle( color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 21),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
