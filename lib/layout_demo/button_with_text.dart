import 'package:flutter/material.dart';

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: color,
        ),
        Text(
          label,
          style: TextStyle(color: color, fontFamily: "Poppins"),
        )
      ],
    );
  }
}
