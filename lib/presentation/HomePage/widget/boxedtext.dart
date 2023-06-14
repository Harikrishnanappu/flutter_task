import 'package:flutter/material.dart';

import '../../constants/consts.dart';

class BoxedText extends StatelessWidget {
  const BoxedText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Text(
        text,
        overflow: TextOverflow.clip,
        style: TextStyle(color: kgrey),
      ),
    );
  }
}
