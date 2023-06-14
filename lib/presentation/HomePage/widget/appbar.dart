import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.menu),
      title: SizedBox(
        width: 150,
        height: 32,
        child: Image.asset("assets/moviesmodnew-Custom.png"),
      ),
      actions: const [Icon(Icons.bookmark_outline)],
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
    );
  }
}
