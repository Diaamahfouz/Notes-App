import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  CustomIcon({required this.iconName, super.key});
  final IconData iconName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: IconButton(
          onPressed: () {},
          icon: Icon(iconName),
        ),
      ),
    );
  }
}
