import 'package:flutter/material.dart';
import 'package:flutter_task/presentation/constants/consts.dart';

class ProfileListtile extends StatelessWidget {
  const ProfileListtile({
    super.key,
    required this.tileName,
    required this.tileIcon,
  });
  final String tileName;
  final IconData tileIcon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        tileIcon,
        color: kwhite,
      ),
      title: Text(
        tileName,
        style: TextStyle(
          fontSize: 12,
          color: kwhite,
        ),
      ),
      trailing: Icon(
        Icons.chevron_right,
        color: kwhite,
      ),
    );
  }
}
