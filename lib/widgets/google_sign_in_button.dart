import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syllabuspu/provider/google_sign_in.dart';

class GoogleSignupButtonWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      child: OutlineButton.icon(
          onPressed: (){
           final provider = Provider.of<GoogleSignInProvider>(context, listen:false);
            provider.login();
          },
          icon: Icon(Icons.forward,color: Colors.red,),
          label: Text('Sign In With Google', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          shape: StadiumBorder(),
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        highlightColor: Colors.black,
        borderSide: BorderSide(color: Colors.black),
        textColor: Colors.black,
      ),
    );
  }
}
