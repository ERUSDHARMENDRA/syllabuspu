import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'background_painter.dart';
import 'google_sign_in_button.dart';

class SignUpWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) => Stack(
    fit: StackFit.expand,
    children: [
      CustomPaint(painter: BackgroundPainter()),
      buildSignUp(),
    ],
  );



  Widget buildSignUp() => Column(
      children: [
        Spacer(),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 175,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Welcome to PU Syllabus',
            style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Spacer(),
        GoogleSignupButtonWidget(),
        SizedBox(height: 12,),
        Padding(
          padding: const EdgeInsets.all(22),
          child: Text('Login to Continue', style: TextStyle(fontSize: 16),),
        ),
      ],
    );
}
