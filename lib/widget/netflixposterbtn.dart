// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

class NetflixPosterBtn extends StatefulWidget {
  const NetflixPosterBtn({Key? key}) : super(key: key);

  @override
  State<NetflixPosterBtn> createState() => _NetflixPosterBtnState();
}

class _NetflixPosterBtnState extends State<NetflixPosterBtn> {
  bool addToList = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(bottom: 10),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: [
            Colors.black,
            Colors.black.withOpacity(1),
            Colors.black.withOpacity(0.3),
            Colors.black.withOpacity(0.1)
          ])),
      // height: MediaQuery.of(context).size.height * 0.2,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FlatButton(
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            addToList = !addToList;
                          });
                        },
                        icon: Icon(
                          addToList == false ? Icons.add : Icons.done,
                          color: Colors.white,
                        )),
                    Text(
                      "My List",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w300),
                    ),
                  ],
                )),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: () {},
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      Icons.play_arrow,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Play",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                )),
            FlatButton(
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.info_outline,
                          color: Colors.white,
                        )),
                    // ignore: prefer_const_constructors
                    Text(
                      "Info",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w300),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
