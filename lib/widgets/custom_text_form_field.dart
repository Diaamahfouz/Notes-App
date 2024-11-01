import 'package:flutter/material.dart';
import 'package:notes_app/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField.CustomTextFormField(
      {required this.text, this.maxLines = 1, this.onSaved, super.key});
  final int maxLines;
  final String text;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 20,
      ),
      child: TextFormField(
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'fieled is required';
          } else {
            return null;
          }
        },
        onSaved: onSaved,
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
