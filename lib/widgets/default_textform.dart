import 'package:flutter/material.dart';

class DefaultTextForm extends StatelessWidget {
  final bool isPassword;
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
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      validator: validator,
      obscureText: isPassword,
      controller: controller,
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
    );
  }
}


// CountryCodePicker(
//           onChanged: print,
//           initialSelection: 'EG',
//           favorite: const ['+20', 'EG'],
//           showCountryOnly: false,
//           showOnlyCountryWhenClosed: false,
//           alignLeft: false,
//         ),