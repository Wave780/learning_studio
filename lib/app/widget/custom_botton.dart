import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.deviceSize,
    required this.colors,
    required this.text,
    required this.radius,
  }) : super(key: key);
  final VoidCallback onPressed;
  final double deviceSize;
  final Color colors;
  final Text text;
  final BorderRadius radius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: deviceSize,
        decoration: BoxDecoration(color: colors, borderRadius: radius),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: text,
          ),
        ),
      ),
    );
  }
}
