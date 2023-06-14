import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  const IconText({
    super.key,
    required this.icon,
    required this.title,
  });
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: const Color(0xff9A9A9A),
        ),
        Text(
          title,
          style: const TextStyle(color: Color(0xff9A9A9A)),
        ),
      ],
    );
  }
}
