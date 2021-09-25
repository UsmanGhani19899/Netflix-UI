// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors, duplicate_ignore, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_ui/screens/netflix%20list/netflixpopular.dart';
import 'package:netflix_ui/screens/netflix%20list/newnetflix.dart';
import 'package:netflix_ui/screens/netflix%20list/onlyonnetflix.dart';
import 'package:netflix_ui/screens/netflix%20list/trendingonnetflix.dart';
import 'package:netflix_ui/widget/netflixpostercarousel.dart';
import 'package:netflix_ui/widget/netflixposter_appbar.dart';
import 'package:netflix_ui/widget/netflixposterbtn.dart';

netflixProductsList(context, String listName, final pageName) {
  return Container(
    margin: EdgeInsets.only(top: 10, left: 5, bottom: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 5),
          child: Text(
            listName,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
        Container(
            height: MediaQuery.of(context).size.height * 0.24,
            // width: MediaQuery.of(context).size.width,
            child: pageName),
      ],
    ),
  );
}

class NetflixPosterCarouselImage extends StatefulWidget {
  const NetflixPosterCarouselImage({Key? key}) : super(key: key);

  @override
  _NetflixPosterCarouselImageState createState() =>
      _NetflixPosterCarouselImageState();
}

class _NetflixPosterCarouselImageState
    extends State<NetflixPosterCarouselImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.69,
                child: Stack(
                  children: [
                    NetflixPosterCarousel(),
                    NetflixPosterBtn(),
                    NetflixPosterAppBar(),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: netflixProductsList(
                          context, "Popular on Netflix", NetflixPopularList()),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 5, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              "Only on Netflix",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height * 0.38,
                              child: OnlyNetflix()),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: netflixProductsList(
                          context, "New on Netflix", NetflixNewList()),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: netflixProductsList(
                          context, "Trending on Netflix", NetflixTrending()),
                    ),
                    //
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
