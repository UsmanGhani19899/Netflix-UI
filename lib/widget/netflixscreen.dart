import 'package:flutter/material.dart';
import 'package:netflix_ui/services/wholist.dart';

class NetfliScreens extends StatelessWidget {
  const NetfliScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height * 0.7,
        margin: EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: profileList.length,
            itemBuilder: (context, index) {
              return Container(
                height: MediaQuery.of(context).size.height * 0.1,
                child: Column(
                  children: [
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.13,
                        child: Image(
                            image: AssetImage(profileList[index].ProfileImg)))
                  ],
                ),
              );
            }),
      ),
    );
  }
}
