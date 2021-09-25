import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:netflix_ui/netflix_splash.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent.withOpacity(0.2),
  ));
  runApp(NetflixUi());
}

class NetflixUi extends StatelessWidget {
  const NetflixUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NetflixSplash(),
    );
  }
}
