// ignore_for_file: unnecessary_string_interpolations, use_key_in_widget_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix_ui/services/database.dart';
import 'package:netflix_ui/widget/netflix_list_popup.dart';

class NetflixPopularList extends StatelessWidget {
  // const NetflixPopularList({Key? key}) : super(key: key);

  final netflixpopkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      key: netflixpopkey,
      body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: netflixPopular.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                showPopUp(
                  context,
                  index,
                  "${netflixPopular[index].imageUrl}",
                  "${netflixPopular[index].itemName}",
                  "${netflixPopular[index].itemDes}",
                  // NetflixProductDetail(
                  //   itemLogo: netflixPopular[index].itemLogo,
                  //   itemDes: netflixPopular[index].itemDes,
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
                    imageUrl: "${netflixPopular[index].imageUrl}",
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
