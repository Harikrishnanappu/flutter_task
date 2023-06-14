import 'package:flutter/material.dart';
import 'package:flutter_task/presentation/HomePage/moviedetails.dart';
import 'package:flutter_task/presentation/HomePage/widget/appbar.dart';
import 'package:flutter_task/presentation/HomePage/widget/maincardscroll.dart';
import 'package:flutter_task/presentation/constants/consts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int myfirstCurrentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0XFF012A52), Color(0XFF011836)])),
      child: Scaffold(
          appBar: const PreferredSize(
              preferredSize: Size.fromHeight(60), child: AppBarWidget()),
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  weekTrending(),
                  const SizedBox(
                    height: 16,
                  ),
                  Column(
                    children: [
                      SingleChildScrollView(
                        child: SizedBox(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          child: PageView.builder(
                            physics: const BouncingScrollPhysics(),
                            onPageChanged: (value) {
                              myfirstCurrentindex = value;
                            },
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.all(8),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset(
                                  "assets/avatar.jpg",
                                  fit: BoxFit.cover,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      TabPageSelector(
                        controller: TabController(
                            length: 4,
                            vsync: this,
                            initialIndex: myfirstCurrentindex),
                      )
                    ],
                  ),
                  kheight30,
                  popular(),
                  kheight16,
                  MainCardScroll(
                      onpress: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const MovieDetails(),
                        ));
                      },
                      movieDiscription: "this is a movie discription",
                      movieName: "SpiderMan No Way Home"),
                  trending(),
                  kheight16,
                  MainCardScroll(
                      onpress: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const MovieDetails(),
                        ));
                      },
                      movieDiscription: "this is a movie discription",
                      movieName: "One Piece"),
                ],
              ),
            ),
          )),
    );
  }
}
