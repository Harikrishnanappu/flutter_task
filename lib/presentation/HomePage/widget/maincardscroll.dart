import 'package:flutter/material.dart';

class MainCardScroll extends StatelessWidget {
  const MainCardScroll({
    super.key,
    required this.movieName,
    required this.movieDiscription,
    required this.onpress,
  });
  final String movieName;
  final String movieDiscription;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: onpress,
                child: Container(
                  width: 107,
                  height: 142,
                  margin: const EdgeInsets.only(right: 10),
                  child: Image.asset(
                    "assets/avatar.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                  width: 107,
                  child: Text(
                    movieName,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffCDCDCD)),
                    overflow: TextOverflow.clip,
                  )),
              SizedBox(
                width: 107,
                child: Text(
                  movieDiscription,
                  style: const TextStyle(
                      color: Color(0xff9A9A9A),
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
