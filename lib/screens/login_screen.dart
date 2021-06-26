import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:syllabuspu/provider/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:syllabuspu/screens/main_screen.dart';
import 'package:syllabuspu/widgets/sign_up.dart';

class LoginScreen extends StatefulWidget {
  static const String id='login-screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context)=> GoogleSignInProvider(),
        child: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            final provider = Provider.of<GoogleSignInProvider>(context);
            if(provider.isSigningIn){
              return buildLoading();
            }else if(snapshot.hasData){
                 return MainScreen();
            } else {
              return SignUpWidget();
                 }
              },
        ),
      ),
    );
  }


  Widget buildLoading() => Center(child: CircularProgressIndicator(
    valueColor: AlwaysStoppedAnimation(Theme.of(context).primaryColor),
  ),);

}
