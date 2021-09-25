// ignore_for_file: unnecessary_string_interpolations, use_key_in_widget_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix_ui/services/database.dart';
import 'package:netflix_ui/widget/netflix_list_popup.dart';

class NetflixNewList extends StatelessWidget {
  // const NetflixPopularList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: netflixNewRelease.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                showPopUp(
                  context,
                  index,
                  "${netflixNewRelease[index].imageUrl}",
                  netflixNewRelease[index].itemName,
                  netflixNewRelease[index].itemDes,
                  // NetflixProductDetail(
                  //   itemLogo: netflixNewRelease[index].itemLogo,
                  //   itemDes: netflixNewRelease[index].itemDes,
                  //   pageName: BottomNaviBar(),
                  // ),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.32,
                margin: const EdgeInsets.only(right: 10, top: 10),

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    placeholder: (context, url) =>
                        Lottie.asset("asset/lottie_animation/image.json"),
                    // ignore: prefer_const_constructors
                    errorWidget: (context, url, error) => Icon(
                      Icons.error,
                      color: Colors.white,
                      size: 25,
                    ),
                    imageUrl: "${netflixNewRelease[index].imageUrl}",
                  ),
                ),
                // child: Image(
                //   image: NetworkImage(
                //     "${netflixPopular[index].imageUrl}",
                //   ),
                // ),
              ),
            );
          }),
    );
  }
}
