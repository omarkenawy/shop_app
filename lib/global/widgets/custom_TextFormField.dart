import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.validator,
    this.onSave,
    this.obscureText = false,
    this.keyboardType,
  });

  final String hintText;
  final String? Function(String? value)? validator;
  final FormFieldSetter? onSave;
  final bool obscureText;
  final TextInputType? keyboardType;
  // final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hintText,
      ),
      validator: validator,
      onSaved: onSave,
      obscureText: obscureText,
      keyboardType: keyboardType,
    );
  }
}
