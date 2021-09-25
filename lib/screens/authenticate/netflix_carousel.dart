// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix_ui/screens/authenticate/login.dart';
import 'package:netflix_ui/screens/authenticate/watching.dart';

class NetflixCarousel extends StatelessWidget {
  const NetflixCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/image/netflix_carousel_.jpg"),
                    fit: BoxFit.cover),
              ), // height: MediaQuery.of(context).size.height,
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: [
                    Colors.black,
                    Colors.black.withOpacity(0.95),
                    Colors.black.withOpacity(0.7)
                  ])),
              margin: const EdgeInsets.only(bottom: 20),
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              horizontal: 100, vertical: 17)),
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(),
                      )),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (ctx) => WhoWatching()));
                  },
                  child: const Text(
                    "GET STARTED",
                    style: TextStyle(
                        letterSpacing: 1,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    child: Image(
                      image: AssetImage("asset/image/netflix_logo_mini.png"),
                    ),
                  ),

                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "PRIVACY",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (ctx) => LogIn()));
                          },
                          child: Text(
                            "SIGNIN",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 120),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.height * 0.35,
                    child: Text(
                      "Unlimited movies,TV show & more",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.height * 0.35,
                    height: MediaQuery.of(context).size.height * 0.1,
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Watch anywhere.Cancel anytime.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
