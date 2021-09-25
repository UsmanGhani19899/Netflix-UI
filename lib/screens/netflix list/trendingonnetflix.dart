// ignore_for_file: unnecessary_string_interpolations, use_key_in_widget_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix_ui/services/tvshows_data.dart';
import 'package:netflix_ui/widget/netflix_list_popup.dart';

class NetflixTrending extends StatelessWidget {
  // const NetflixPopularList({Key? key}) : super(key: key);

  // final netflixpopkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: seriesData.length,
          itemBuilder: (context, index) {
            return Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              width: MediaQuery.of(context).size.width * 0.32,
              margin: const EdgeInsets.only(right: 9, left: 2, top: 10),

              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: GestureDetector(
                  onTap: () {
                    showPopUp(
                      context,
                      index,
                      seriesData[index].imgUrl,
                      seriesData[index].itemName,
                      seriesData[index].itemDes,
                      // NetflixProductDetail(
                      // //   itemLogo: seriesData[index].itemLogo,
                      // //   itemDes: seriesData[index].itemDes,
                      // //   pageName: BottomNaviBar(),
                      // // ),
                    );
                  },
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
                      imageUrl: "${seriesData[index].imgUrl}"),
                ),
              ),
              // child: Image(
              //   image: NetworkImage(
              //     "${netflixPopular[index].imageUrl}",
              //   ),
              // ),
            );
          }),
    );
  }
}
