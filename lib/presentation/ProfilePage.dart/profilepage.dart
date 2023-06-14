import 'package:flutter/material.dart';
import 'package:flutter_task/presentation/LoginPage/loginpage.dart';
import 'package:flutter_task/presentation/ProfilePage.dart/widget/profilelisttile.dart';
import 'package:flutter_task/presentation/ProfilePage.dart/widget/ranksection.dart';
import 'package:flutter_task/presentation/constants/consts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0XFF012A52), Color(0XFF011836)])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Profile",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: const [Icon(Icons.settings)],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListTile(
                leading: const CircleAvatar(
                  radius: 30,
                ),
                title: Text(
                  "Hari",
                  style: TextStyle(
                    fontSize: 16,
                    color: kwhite,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: const Text(
                  "lvl 1 Moviebuff",
                  style: TextStyle(
                      color: Color(0xff9A9A9A),
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                trailing: SizedBox(
                  width: 100,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Edit profile",
                        style: TextStyle(
                            color: Color(0xff9A9A9A),
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Color(0xff9A9A9A),
                      )
                    ],
                  ),
                ),
              ),
              kheight30,
              const RankSection(),
              kheight30,
              const ProfileListtile(
                  tileIcon: Icons.card_giftcard_outlined,
                  tileName: "Rewards & Refferals"),
              const ProfileListtile(
                tileName: "WathLater",
                tileIcon: Icons.watch_later_outlined,
              ),
              const ProfileListtile(
                tileIcon: Icons.favorite_border,
                tileName: "My Favorite",
              ),
              const ProfileListtile(
                tileName: "Leaderboard",
                tileIcon: Icons.leaderboard_outlined,
              ),
              const ProfileListtile(
                tileName: "Manage Interest",
                tileIcon: Icons.apps,
              ),
              const ProfileListtile(
                tileName: "Payment Method",
                tileIcon: Icons.wallet,
              ),
              const ProfileListtile(
                tileName: "Change Language",
                tileIcon: Icons.language_outlined,
              ),
              const ProfileListtile(
                tileName: "Refer & Earn",
                tileIcon: Icons.monetization_on_sharp,
              ),
              const ProfileListtile(
                  tileIcon: Icons.star_border, tileName: "Rate Us"),
              kheight30,
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      fixedSize: const Size(200, 10),
                      foregroundColor: kwhite,
                      side:
                          const BorderSide(width: 3, color: Color(0xff0771C7))),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
                  },
                  child: const Text(
                    "LOG OUT",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
