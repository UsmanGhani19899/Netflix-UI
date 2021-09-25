// ignore_for_file: prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix_ui/services/movies_data.dart';
import 'package:netflix_ui/widget/netflix_list_popup.dart';
import '../bottom_navi_bar.dart';

class Movies extends StatelessWidget {
  const Movies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerScroll) => [
          SliverAppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (ctx) => BottomNaviBar()));
              },
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text("Movies"),
            actions: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
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
        ],
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: GridView.builder(
                // ignore: prefer_const_constructors
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 2 / 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2),
                itemCount: netflixMovies.length,
                itemBuilder: (BuildContext context, index) {
                  return GestureDetector(
                    onTap: () {
                      showPopUp(
                        context,
                        index,
                        netflixMovies[index].imgUrl,
                        netflixMovies[index].itemName,
                        netflixMovies[index].itemDes,
                        // NetflixProductDetail(
                        //   itemLogo: netflixMovies[index].itemLogo,
                        //   itemDes: netflixMovies[index].itemDes,
                        //   pageName: Movies(),
                        // ),
                      );
                    },
                    child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        placeholder: (context, url) =>
                            Lottie.asset("asset/lottie_animation/image.json"),
                        imageUrl: netflixMovies[index].imgUrl),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
