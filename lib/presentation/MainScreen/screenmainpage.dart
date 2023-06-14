import 'package:flutter/material.dart';
import 'package:flutter_task/presentation/FavoritePage/favoritepage.dart';
import 'package:flutter_task/presentation/HomePage/homepage.dart';
import 'package:flutter_task/presentation/MainScreen/widget/bottom_nav_bar.dart';
import 'package:flutter_task/presentation/ProfilePage.dart/profilepage.dart';
import 'package:flutter_task/presentation/SearchPage/searchpage.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final pages = [
    const HomePage(),
    const SearchPage(),
    const FavoritePage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return pages[index];
          },
        ),
        bottomNavigationBar: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0XFF012A52), Color(0XFF011836)])),
            child: const BottomNavWidget()),
      ),
    );
  }
}
