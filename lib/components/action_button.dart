import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
    required this.onTap,
   this.isPrimary = true,
    this.title,

  }) : super(key: key);
  final title;
  final Function onTap;
  final bool isPrimary;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 200,
        child: ElevatedButton(onPressed: () => onTap(), child: Text(title,style: TextStyle(fontSize: 18,color: Colors.white,),)));
  }
}
