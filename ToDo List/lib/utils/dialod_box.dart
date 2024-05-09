import 'package:todo/utils/my_button.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

   // ignore: prefer_const_constructors_in_immutables
   DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: DecoratedBox(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            transform: GradientRotation(40 * 3.1415927 / 180),
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFFFF9D0), // Color 1
              Color(0xFFCAF4FF), // Color 2
              Color(0xFFA0DEFF), // Color 3
              Color(0xFF5AB2FF), // Color 4
            ],
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors
                            .black), // Setting focused border color to black
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  filled: true,
                  fillColor: Color(0xFFEEF7FF),
                  hintText: 'Enter New Task....',
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(text: "Save", onPresses: onSave),
                  const SizedBox(width: 10),
                  MyButton(text: "Cancel", onPresses: onCancel),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
