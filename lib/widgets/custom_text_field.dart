import 'package:flutter/material.dart';
import 'package:notes_app/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({required this.text, this.maxLines = 1, super.key});
  int maxLines;
  String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 20,
      ),
      child: TextField(
        cursorColor: KprimaryColor,
        maxLines: maxLines,
        decoration: InputDecoration(
          label: Text(
            text,
          ),
          labelStyle: TextStyle(
            fontSize: 18,
            color: KprimaryColor,
          ),
          border: buildBorder(),
          hintText: text,
          hintStyle: const TextStyle(
            color: KprimaryColor,
            fontSize: 18,
          ),
          focusedBorder: buildBorder(
            KprimaryColor,
          ),
        ),
      ),
    );
  }
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
      color: color ?? Colors.white,
    ),
  );
}
