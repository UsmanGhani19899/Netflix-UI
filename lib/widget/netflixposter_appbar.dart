// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:netflix_ui/widget/TabBar%20Screens/moviestab.dart';
import 'package:netflix_ui/widget/TabBar%20Screens/tv_shows.dart';
import 'TabBar Screens/cat_btn_list.dart';

class NetflixPosterAppBar extends StatelessWidget {
  void showCatPanel(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        isDismissible: false,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: [Colors.black, Colors.black.withOpacity(0.3)])),
              child: CatTextList());
        });
  }

  final btnstyle = ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      backgroundColor: MaterialStateProperty.all(Colors.transparent));

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.5),
      padding: EdgeInsets.only(top: 30, right: 20),
      height: MediaQuery.of(context).size.height * 0.22,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                image: AssetImage("asset/image/netflix_logo_mini.png"),
                width: 50,
              ),
              Container(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        size: 25,
                      ),
                      color: Colors.white,
                    ),
                    Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: DecorationImage(
                            image: AssetImage("asset/image/screen_one.jpg"),
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(
              vertical: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (ctx) => TVShows()));
                  },
                  style: btnstyle,
                  child: Text(
                    "TV Shows",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (ctx) => Movies()));
                  },
                  style: btnstyle,
                  child: Text(
                    "Movies",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    showCatPanel(context);
                  },
                  style: btnstyle,
                  child: Text(
                    "Categories",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
