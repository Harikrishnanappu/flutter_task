import 'package:flutter/material.dart';

const kheight16 = SizedBox(
  height: 16,
);
const kheight30 = SizedBox(
  height: 30,
);

Text trending() => Text(
      "Trending Now",
      style:
          TextStyle(fontSize: 18, color: kwhite, fontWeight: FontWeight.w700),
    );
Text popular() => Text(
      "Popular Movies",
      style:
          TextStyle(fontSize: 18, color: kwhite, fontWeight: FontWeight.w700),
    );
Text weekTrending() => Text(
      "Trending This Week",
      style:
          TextStyle(fontSize: 18, color: kwhite, fontWeight: FontWeight.w700),
    );

Color kwhite = Colors.white;
Color kgrey = const Color(0xff9A9A9A);
