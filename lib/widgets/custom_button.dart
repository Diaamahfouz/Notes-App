import 'package:flutter/material.dart';
import 'package:notes_app/constants/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {required this.text, super.key, this.onTap, this.isLoading = false});
  final String text;
  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 55,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: KprimaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: isLoading
                ? CircularProgressIndicator(
                    color: Colors.black,
                  )
                : Text(
                    text,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
