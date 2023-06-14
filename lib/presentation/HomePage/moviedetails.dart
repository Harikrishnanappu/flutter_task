import 'package:flutter/material.dart';
import 'package:flutter_task/presentation/HomePage/widget/circleavatarwithtext.dart';
import 'package:flutter_task/presentation/HomePage/widget/maincardscroll.dart';
import '../constants/consts.dart';
import 'widget/boxedtext.dart';
import 'widget/iconwithtext.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF011836),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 450,
                  child: Image.asset(
                    "assets/avatar.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 450,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        const Color(0XFF011836).withOpacity(0),
                        const Color(0XFF011836)
                      ])),
                )
              ],
            ),
            ListTile(
              title: Text(
                "Avatar",
                style: TextStyle(
                    fontSize: 24, color: kwhite, fontWeight: FontWeight.w700),
              ),
              trailing: SizedBox(
                width: 120,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    IconText(
                      icon: Icons.info_outline,
                      title: "Info",
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    IconText(
                      icon: Icons.add,
                      title: "Watch Later",
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "2021.action.fantacy.3hr",
                        style: TextStyle(color: kgrey),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 20,
                            color: Colors.yellow,
                            child: const Text("IMDB"),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "8.5/10",
                            style: TextStyle(color: kgrey),
                          )
                        ],
                      )
                    ],
                  ),
                  kheight16,
                  const BoxedText(
                    text:
                        "Starring: Sam Worthington, Zoe Saldaña, Sigourney Weaver, Stephen Lang",
                  ),
                  kheight16,
                  SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff0771C7),
                              fixedSize: const Size(300, 40)),
                          onPressed: () {},
                          child: Text(
                            "Watch Now",
                            style: TextStyle(
                                fontSize: 16,
                                color: kwhite,
                                fontWeight: FontWeight.w700),
                          )),
                    ),
                  ),
                  kheight16,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      IconText(
                          icon: Icons.favorite_outline,
                          title: "Add to favorite"),
                      IconText(
                          icon: Icons.download_for_offline_outlined,
                          title: "Download"),
                      IconText(
                          icon: Icons.thumb_up_alt_outlined, title: "Like"),
                      IconText(
                          icon: Icons.upload_outlined,
                          title: "Upload subtitles")
                    ],
                  ),
                  kheight16,
                  const BoxedText(
                      text:
                          "Set more than a decade after the events of the first film, learn the story of the Sully family (Jake, Neytiri, and their kids), the trouble that follows them, the lengths they go to keep each they .."),
                  kheight16,
                  Text(
                    "Top Cast",
                    style: TextStyle(
                        fontSize: 16,
                        color: kwhite,
                        fontWeight: FontWeight.w700),
                  ),
                  kheight16,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CircleAvatarWithText(
                        title: "MohanLal",
                      ),
                      CircleAvatarWithText(
                        title: "Mammooty",
                      ),
                      CircleAvatarWithText(
                        title: "SunnyLeaon",
                      ),
                      CircleAvatarWithText(
                        title: "Hari",
                      ),
                    ],
                  ),
                  kheight16,
                  Text(
                    "Reviewss",
                    style: TextStyle(
                        fontSize: 16,
                        color: kwhite,
                        fontWeight: FontWeight.w700),
                  ),
                  kheight16,
                  Container(
                    width: double.infinity,
                    // height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kgrey.withOpacity(0.5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ajacayen-08856",
                            style: TextStyle(
                                fontSize: 16,
                                color: kwhite,
                                fontWeight: FontWeight.w500),
                          ),
                          kheight16,
                          const BoxedText(
                              text:
                                  "I will admit it. I am one of those people who are skeptical with the idea of having a sequel to the highest grossing yet forgettable, to some audience, of all time. That being said, I remained Read more... hoped that it would at least be good. And boy was I surprised by this movie. The Way of Water was not only great as the 2009 technical masterpiece, but was somewhat, better than I expected."),
                          kheight16,
                        ],
                      ),
                    ),
                  ),
                  kheight16,
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
            )
          ],
        ),
      ),
    );
  }
}
