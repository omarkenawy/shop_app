import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.onPressed, required this.text, this.color});

  final VoidCallback onPressed;
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        child: Text(text),
      ),
    );
  }
}
