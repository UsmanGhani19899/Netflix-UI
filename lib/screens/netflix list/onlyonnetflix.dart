// ignore_for_file: unnecessary_string_interpolations, use_key_in_widget_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix_ui/services/database.dart';
import 'package:netflix_ui/widget/netflix_list_popup.dart';

class OnlyNetflix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: onlyOnNetflixList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                showPopUp(
                  context,
                  index,
                  "${onlyOnNetflixList[index].imageUrl}",
                  "${onlyOnNetflixList[index].itemName}",
                  "${onlyOnNetflixList[index].itemDes}",
                  // NetflixProductDetail(
                  //   itemLogo: onlyOnNetflixList[index].itemLogo,
                  //   itemDes: onlyOnNetflixList[index].itemDes,
                  //   pageName: BottomNaviBar(),
                  // ),
                );
              },
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.width * 0.48,
                margin: const EdgeInsets.only(right: 9, left: 2, top: 10),
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
                      imageUrl: "${onlyOnNetflixList[index].imageUrl}"),
                ),
              ),
            );
          }),
    );
  }
}
