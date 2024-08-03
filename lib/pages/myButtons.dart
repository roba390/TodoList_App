
import 'package:flutter/material.dart';

class Mybuttons extends StatelessWidget {
  Mybuttons({super.key, required this.text, required this.onPressed});

  final String text;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: onPressed,
      color: Colors.grey,
    child: Text(text),


    );
  }
}
