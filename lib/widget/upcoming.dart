// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:netflix_ui/services/netflix_network_videos.dart';
import 'package:netflix_ui/services/netflixupcominglist.dart';
import 'package:netflix_ui/widget/cheweivideoplayer.dart';
import 'package:video_player/video_player.dart';

class UpComing extends StatefulWidget {
  @override
  State<UpComing> createState() => _UpComingState();
}

class _UpComingState extends State<UpComing> {
  bool reminderAdded = true;

  reminderandshareBtn(
    final btnIcon,
    String btnname,
  ) {
    return GestureDetector(
        onTap: () {},
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Icon(
              btnIcon,
              color: Colors.white,
              size: 25,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              btnname,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
          ],
        ));
  }

  upcomingdetails(
    context,
  ) {
    return ListView.builder(
        itemCount: netflixUpcomingList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.274,
                  child: NetflixVideoPlayer(
                    videoPlayerController: VideoPlayerController.network(
                        upcomingNetworkVideos[index].networdVideos),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Image.network(netflixUpcomingList[index].netImg),
                    ),
                    Row(children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            reminderAdded != reminderAdded;
                          });
                        },
                        child: reminderandshareBtn(
                          reminderAdded == true
                              ? Icons.notifications
                              : Icons.mark_as_unread,
                          "Reminder",
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      reminderandshareBtn(
                        Icons.share,
                        "Share",
                      ),
                    ]),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                height: MediaQuery.of(context).size.height * 0.25,
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "${netflixUpcomingList[index].upcomingDate}",
                      style: TextStyle(color: Colors.grey),
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    Text(
                      "${netflixUpcomingList[index].upcomingTitle}",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "${netflixUpcomingList[index].upcomingDes}",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "Romantic · Crime · Suspense · Fantasy",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: upcomingdetails(
            context,
          ),
        ),
      ),
    );
  }
}
