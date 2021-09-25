// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SliverMiniBar extends StatelessWidget {
  // const SliverMiniBar({Key? key}) : super(key: key);

  String barName;
  SliverMiniBar({required this.barName});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(barName),
      actions: [
        Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              image: DecorationImage(
                image: AssetImage("asset/image/screen_one.jpg"),
              ),
            )),
      ],
    );
  }
}
