// // ignore_for_file: prefer_const_constructors

// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:netflix_ui/services/database.dart';
// import 'package:netflix_ui/services/netflix_network_videos.dart';

// import 'package:netflix_ui/widget/bottom_navi_bar.dart';
// import 'package:netflix_ui/widget/netflixposter_appbar.dart';
// import 'package:video_player/video_player.dart';

// import 'cheweivideoplayer.dart';

// class NetflixProductDetail extends StatefulWidget {
//   String? itemLogo;
//   String? itemDes;
//   final pageName;
//   NetflixProductDetail({this.itemLogo, this.itemDes, this.pageName});

//   @override
//   _NetflixProductDetailState createState() => _NetflixProductDetailState();
// }

// class _NetflixProductDetailState extends State<NetflixProductDetail> {
//   playAnddownloadBtn(
//     context,
//     final btnIcon,
//     btnColor,
//     txtColor,
//     iconColor,
//     String btnName,
//   ) {
//     return SizedBox(
//       width: MediaQuery.of(context).size.width - 20,
//       child: TextButton(
//           style:
//               ButtonStyle(backgroundColor: MaterialStateProperty.all(btnColor)),
//           onPressed: () {},
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             // ignore: prefer_const_literals_to_create_immutables
//             children: [
//               Icon(
//                 btnIcon,
//                 color: iconColor,
//               ),
//               Text(
//                 btnName,
//                 style: TextStyle(color: txtColor, fontSize: 18),
//               ),
//             ],
//           )),
//     );
//   }

//   userBtns(final btnIcon, String btnName) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         IconButton(
//             onPressed: () {},
//             icon: Icon(
//               btnIcon,
//               color: Colors.white,
//             )),
//         Text(
//           btnName,
//           style: TextStyle(color: Colors.white),
//         )
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: SafeArea(
//         child: Scaffold(
//           backgroundColor: Colors.black,
//           body: NestedScrollView(
//             headerSliverBuilder: (context, innerScrolled) => [
//               SliverAppBar(
//                 backgroundColor: Colors.transparent,
//                 leading: IconButton(
//                   onPressed: () {
//                     Navigator.of(context).pushReplacement(
//                         MaterialPageRoute(builder: (ctx) => widget.pageName));
//                   },
//                   icon: Icon(Icons.arrow_back),
//                   color: Colors.white,
//                 ),
//               ),
//             ],
//             body: ListView(
//               scrollDirection: Axis.vertical,
//               children: [
//                 Container(
//                   height: MediaQuery.of(context).size.height,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         height: MediaQuery.of(context).size.height * 0.3,
//                         child: Container(
//                           height: MediaQuery.of(context).size.height * 0.274,
//                           child: NetflixVideoPlayer(
//                             videoPlayerController:
//                                 VideoPlayerController.network(""),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         padding: EdgeInsets.all(10),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Container(
//                                 alignment: Alignment.topLeft,
//                                 height:
//                                     MediaQuery.of(context).size.height * 0.07,
//                                 margin: EdgeInsets.symmetric(vertical: 10),
//                                 child: CachedNetworkImage(
//                                   imageUrl: "${widget.itemLogo}",
//                                   placeholder: (context, url) =>
//                                       CircularProgressIndicator(
//                                     color: Colors.red,
//                                   ),
//                                 )),
//                             Container(
//                               child: Column(
//                                 children: [
//                                   playAnddownloadBtn(
//                                       context,
//                                       Icons.play_arrow,
//                                       Colors.white,
//                                       Colors.black,
//                                       Colors.black,
//                                       "PLay"),
//                                   playAnddownloadBtn(
//                                       context,
//                                       Icons.download_sharp,
//                                       Colors.grey.shade900,
//                                       Colors.white,
//                                       Colors.white,
//                                       "Download")
//                                 ],
//                               ),
//                             ),
//                             Container(
//                                 margin: EdgeInsets.symmetric(vertical: 10),
//                                 // height:
//                                 //     MediaQuery.of(context).size.height * 0.1,
//                                 width: MediaQuery.of(context).size.width * 0.9,
//                                 child: Text(
//                                   "${widget.itemDes}",
//                                   style: TextStyle(
//                                       color: Colors.white.withOpacity(0.9)),
//                                 )),
//                             // Container(
//                             //   margin: EdgeInsets.symmetric(vertical: 10),
//                             //   height: MediaQuery.of(context).size.height * 0.05,
//                             //   child: Text(
//                             //     "Starring : cast name",
//                             //     style: TextStyle(color: Colors.white),
//                             //   ),
//                             // ),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         // width: MediaQuery.of(context).size.width * 0.8,
//                         height: MediaQuery.of(context).size.height * 0.09,
//                         margin: EdgeInsets.symmetric(horizontal: 10),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             // ignore: prefer_const_literals_to_create_immutables
//                             userBtns(Icons.add, "My List"),
//                             userBtns(Icons.thumb_up_alt_outlined, "Rate"),

//                             userBtns(Icons.share, "Share"),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                             border: Border(
//                                 top: BorderSide(color: Colors.grey.shade900))),
//                         margin: EdgeInsets.symmetric(vertical: 20),
//                         padding: EdgeInsets.symmetric(vertical: 20),
//                         child: TabBar(indicatorColor: Colors.red, tabs: [
//                           Container(
//                               padding: EdgeInsets.all(8),
//                               child: Text("EPISODES")),
//                           Container(
//                               padding: EdgeInsets.all(8),
//                               child: Text("TRAILERS")),
//                           Container(
//                               padding: EdgeInsets.all(8), child: Text("MORE")),
//                         ]),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
