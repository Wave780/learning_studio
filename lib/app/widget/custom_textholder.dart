import 'package:flutter/material.dart';

class TextHolder extends StatelessWidget {
  const TextHolder({
    super.key,
    required this.text,
  });
  final Text text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 50,
      width: 350,
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
      child: text,
    );
  }
}
