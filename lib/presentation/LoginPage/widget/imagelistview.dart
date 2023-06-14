import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_task/presentation/constants/consts.dart';

class ImageListView extends StatelessWidget {
  const ImageListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 1.94 * pi,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.30,
        height: MediaQuery.of(context).size.height * 0.42,
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(
                right: 8,
                left: 8,
                top: 10,
              ),
              height: MediaQuery.of(context).size.height * 0.18,
              child: Image.asset(
                "assets/avatar.jpg",
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}
