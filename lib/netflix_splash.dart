import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix_ui/screens/authenticate/netflix_carousel.dart';

class NetflixSplash extends StatefulWidget {
  const NetflixSplash({Key? key}) : super(key: key);

  @override
  State<NetflixSplash> createState() => _NetflixSplashState();
}

class _NetflixSplashState extends State<NetflixSplash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (ctx) => const NetflixCarousel()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
          alignment: Alignment.center,
          child: Lottie.asset("asset/lottie_animation/netflix_lottie.json")),
    );
  }
}
