// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

showPopUp(
  context,
  final index,
  String itemImg,
  String itemName,
  String itemDes,
) {
  showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isDismissible: true,
      context: context,
      builder: (context) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            padding: EdgeInsets.all(10),
            color: Colors.grey.shade900,
            height: MediaQuery.of(context).size.height * 0.28,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: CachedNetworkImage(
                        imageUrl: itemImg,
                        placeholder: (context, url) =>
                            Lottie.asset("asset/lottie_animation/image.json"),
                        fit: BoxFit.cover,
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      )),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ignore: prefer_const_constructors
                      Text(
                        itemName,
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 21),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.11,
                        width: MediaQuery.of(context).size.width * 0.55,
                        child: Text(
                          itemDes,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                            onPressed: () {},
                            child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                // ignore: prefer_const_constructors
                                Icon(
                                  Icons.play_arrow,
                                  color: Colors.black,
                                ),
                                // ignore: prefer_const_constructors
                                SizedBox(
                                  width: 5,
                                ),
                                // ignore: prefer_const_constructors
                                Text(
                                  "Play",
                                  // ignore: prefer_const_constructors
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          TextButton(
                            onPressed: () {
                              // Navigator.of(context).pushReplacement(
                              //     MaterialPageRoute(
                              //         builder: (ctx) => pageName));
                            },
                            child: Text(
                              "Detail",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      });
}
