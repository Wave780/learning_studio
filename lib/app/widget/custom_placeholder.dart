import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.radius,
    required this.borderSide,
    this.controller,
    this.hintStyle,
    this.hintText,
    required this.textAlign,
  }) : super(key: key);
  final BorderRadius radius;
  final BorderSide borderSide;
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
            borderRadius: radius, borderSide: borderSide),
      ),
    );
  }
}
