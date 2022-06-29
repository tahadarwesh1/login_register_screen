import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  final String text;
  final Color color;
  final void Function()? onPressed;
  const MyTextButton({
    Key? key,
    required this.text,
    required this.color,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
