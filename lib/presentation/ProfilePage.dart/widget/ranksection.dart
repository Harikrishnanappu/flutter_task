import 'package:flutter/material.dart';

import '../../constants/consts.dart';

class RankSection extends StatelessWidget {
  const RankSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Rank #10",
                style: TextStyle(
                  fontSize: 12,
                  color: kwhite,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Text(
                "XP 2/100",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox()
            ],
          ),
          kheight16,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SizedBox(
                width: 120,
                child: Divider(
                  color: Colors.blue,
                  thickness: 3,
                ),
              ),
              SizedBox(),
              Text(
                "View Progress",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff0771C7),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}
