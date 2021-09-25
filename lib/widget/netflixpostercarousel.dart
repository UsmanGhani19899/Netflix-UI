// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:lottie/lottie.dart';

class NetflixPosterCarousel extends StatelessWidget {
  const NetflixPosterCarousel({Key? key}) : super(key: key);

  carouselImage(
    final imgName,
    context,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: CachedNetworkImage(
        placeholder: (
          context,
          url,
        ) =>
            Lottie.asset("asset/lottie_animation/image.json"),
        // ignore: prefer_const_constructors
        errorWidget: (context, url, error) => Icon(
          Icons.error_outline,
          color: Colors.white,
          size: 30,
        ),
        imageUrl: imgName, fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          carouselImage(
              "https://punto.com.ph/wp-content/uploads/2021/08/ENUS_LCDP_S5_Main_Vertical_RGB_PRE.jpg",
              context),
          carouselImage(
            "https://c4.wallpaperflare.com/wallpaper/846/216/1006/godzilla-movies-movie-poster-godzilla-king-of-the-monsters-wallpaper-preview.jpg",
            context,
          ),
          carouselImage(
            "https://m.media-amazon.com/images/M/MV5BMDg4NTQ2ZDgtMzI5Zi00Mzc1LTk0ZWQtZTI5ODhkNWY5NzdlXkEyXkFqcGdeQXVyNjEwNTM2Mzc@._V1_.jpg",
            context,
          ),
          carouselImage(
              "https://punto.com.ph/wp-content/uploads/2021/08/ENUS_LCDP_S5_Main_Vertical_RGB_PRE.jpg",
              context),
        ],
        options: CarouselOptions(
          viewportFraction: 1,
          autoPlay: true,
          autoPlayInterval: Duration(minutes: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 10),
          disableCenter: false,
          enlargeCenterPage: false,
          height: MediaQuery.of(context).size.height * 0.9,
        ));
  }
}
