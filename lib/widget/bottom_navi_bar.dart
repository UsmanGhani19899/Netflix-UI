// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_ui/screens/BottomNavigationScreens/comingsoon.dart';
import 'package:netflix_ui/screens/BottomNavigationScreens/downloads.dart';
import 'package:netflix_ui/screens/BottomNavigationScreens/netflixentertainment.dart';

class BottomNaviBar extends StatefulWidget {
  const BottomNaviBar({Key? key}) : super(key: key);

  @override
  _BottomNaviBarState createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  bool changeIcon = false;

  final screens = [
    NetflixPosterCarouselImage(),
    ComingSoon(),
    Downloads(),
  ];
  int _selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedPage,
        onTap: (int index) {
          setState(() {
            _selectedPage = index;
            changeIcon = !changeIcon;
          });
        },

        fixedColor: Colors.white,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.grey.shade900.withOpacity(0.8),
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.white,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.play_circle_outline,
                color: Colors.white,
              ),
              label: "Coming Soon"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.download_for_offline_outlined,
                color: Colors.white,
              ),
              label: "Downloads"),
        ],
      ),
      body: screens[_selectedPage],
    );
  }
}
