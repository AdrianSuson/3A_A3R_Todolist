import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPresses;
  MyButton({super.key, required this.text, required this.onPresses});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPresses,
      color: const Color(0xFFEEF7FF),
      child: Text(text),
    );
  }
}
