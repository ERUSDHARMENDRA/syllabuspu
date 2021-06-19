import 'package:flutter/material.dart';

class actionButton extends StatelessWidget {
  const actionButton({
    Key? key,
    required this.onTap,
    this.title,
  }) : super(key: key);
  final title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 200,
        child: ElevatedButton(onPressed: () => onTap(), child: Text(title)));
  }
}
