import 'package:flutter/material.dart';

import '../../constants/consts.dart';

class CircleAvatarWithText extends StatelessWidget {
  const CircleAvatarWithText({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: kgrey,
        ),
        Text(
          title,
          style: TextStyle(color: kgrey),
        ),
      ],
    );
  }
}
