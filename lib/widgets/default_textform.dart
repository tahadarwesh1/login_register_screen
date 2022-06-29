import 'package:flutter/material.dart';
import 'package:login_register_screen/styles.dart';

class DefaultTextForm extends StatelessWidget {
  final bool isPassword;
  final String text;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final String? Function(String?)? validator;
  const DefaultTextForm({
    Key? key,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    required this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
    required this.validator,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          keyboardType: keyboardType,
          validator: validator,
          obscureText: isPassword,
          controller: controller,
          style: kTextFieldStyle,
          decoration: InputDecoration(
            hintText: hintText,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.zero,
              ),
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }
}
