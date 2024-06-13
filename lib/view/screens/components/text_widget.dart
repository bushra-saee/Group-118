import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Text(
          text!,
          style: const  TextStyle(
              fontWeight: FontWeight.w800, fontSize: 32, letterSpacing: 3),
        ),
      ),
    );
  }
}