// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names, sized_box_for_whitespace, duplicate_ignore

import 'package:flutter/material.dart';

import 'package:netflix_ui/services/wholist.dart';
import 'package:netflix_ui/widget/bottom_navi_bar.dart';

class WhoWatching extends StatelessWidget {
  const WhoWatching({Key? key}) : super(key: key);

  netflixProfiles(
    context,
    String profile_image,
    String profile_username,
  ) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      GestureDetector(
        onTap: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (ctx) => BottomNaviBar()));
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.22,

          // ignore: prefer_const_constructors
          child: Column(
            children: [
              Image(
                image: AssetImage(profile_image),
                fit: BoxFit.cover,
                width: 90,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                profile_username,
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Container(
          margin: EdgeInsets.only(top: 10),
          child: const Image(
            image: AssetImage("asset/image/netflix_logo.png"),
            fit: BoxFit.cover,
            width: 115,
          ),
        ),
        actions: [
          Container(
              margin: EdgeInsets.only(right: 15, top: 10),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.edit)))
        ],
      ),
      body: Column(
        children: [
          Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.12,
              // ignore: prefer_const_constructors
              child: Text(
                "Who's Watching?",
                style: const TextStyle(color: Colors.white, fontSize: 20),
              )),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: MediaQuery.of(context).size.height * 0.7,
              child: GridView.builder(
                  itemCount: profileList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Container(
                        child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (ctx) => BottomNaviBar()));
                      },
                      child: Column(children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.13,
                          child: Image(
                              image: AssetImage(profileList[index].ProfileImg)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          profileList[index].userName,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                      ]),
                    ));
                  })),
        ],
      ),
    );
  }
}
