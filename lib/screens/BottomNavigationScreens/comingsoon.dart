// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_ui/widget/sliver_bar.dart';
import 'package:netflix_ui/widget/upcoming.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder: (context, inerBarIsScrolled) =>
                [SliverMiniBar(barName: "Coming Soon")],
            body: Container(
                height: MediaQuery.of(context).size.height * 0.34,
                child: UpComing()),
          ),
        ));
  }
}
