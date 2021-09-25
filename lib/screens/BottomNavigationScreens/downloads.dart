// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_ui/widget/bottom_navi_bar.dart';
import 'package:netflix_ui/widget/sliver_bar.dart';

class Downloads extends StatefulWidget {
  const Downloads({Key? key}) : super(key: key);

  @override
  State<Downloads> createState() => _DownloadsState();
}

class _DownloadsState extends State<Downloads> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder: (context, inerBarIsScrolled) => [
              SliverMiniBar(barName: "My Download"),
            ],
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Icon(
                    Icons.download_for_offline_rounded,
                    size: 250,
                    color: Colors.grey.withOpacity(0.4),
                  ),
                ),
                TextButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.grey.shade900)),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (ctx) => BottomNaviBar()));
                    },
                    child: Text(
                      "Find Something to Download",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
        ));
  }
}
