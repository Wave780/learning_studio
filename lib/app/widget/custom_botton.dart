import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.deviceSize,
    required this.colors,
    required this.text,
  });

  final double deviceSize;
  final Color colors;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: deviceSize,
      decoration: BoxDecoration(
          color: Colors.orange.shade900,
          borderRadius: BorderRadius.circular(35)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontSize: 14.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
