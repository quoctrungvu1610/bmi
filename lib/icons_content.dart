import 'package:flutter/material.dart';
import 'constants.dart';

class IconInside extends StatelessWidget {
  @override
  IconInside({required this.gender, required this.icon, required this.iconColor});
  final String gender;
  final IconData icon;
  final Color iconColor;
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: iconColor,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(gender, style:kLabelTextStyle ),
      ],
    );
  }
}