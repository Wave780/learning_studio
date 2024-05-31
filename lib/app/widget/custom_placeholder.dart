import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.hintStyle,
    this.hintText,
    required this.textAlign,
  });

  final TextEditingController? controller;
  final TextStyle? hintStyle;
  final String? hintText;
  final TextAlign textAlign;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textAlign: textAlign,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle,
        fillColor: Colors.grey[100],
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.47),
            borderSide: BorderSide.none),
      ),
    );
  }
}
