import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:syllabuspu/components/action_button.dart';
import 'package:syllabuspu/screens/ranking_screen.dart';
import 'package:syllabuspu/services/auth_service.dart';

class RankAuthButton extends StatefulWidget {
  const RankAuthButton({Key? key}) : super(key: key);

  @override
  State<RankAuthButton> createState() => _RankAuthButtonState();
}

class _RankAuthButtonState extends State<RankAuthButton> {
  bool _isloggedIn = false;

  @override
  Widget build(BuildContext context) {
    if (_isloggedIn)
      return ActionButton(
          title: 'Ranking ',
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => RankingScreen()));
          });

    return ActionButton(
      isPrimary: false,
      onTap: () {
        if (kIsWeb) {
          AuthService.signInWithGoogleWeb();
          return;
        }
        AuthService.signInWithGoogle();
      },
      title: "Sign in with Google",
    );
  }

  @override
  void initState() {
    FirebaseAuth.instance.userChanges().listen((user) {
      if (user == null) {
        setState(() {
          _isloggedIn = false;
        });
        return;
      }
      setState(() {
        _isloggedIn = true;
      });
    });
    super.initState();
  }
}
