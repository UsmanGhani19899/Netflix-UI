// // ignore_for_file: unnecessary_string_interpolations

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:netflix_ui/services/cat_list_text.dart';

class CatTextList extends StatelessWidget {
  const CatTextList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 65,
        width: 65,
        child: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "╳",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w900),
            )),
      ),
      body: Container(
        margin: EdgeInsets.only(bottom: 30),
        child: ListView.builder(
            itemCount: categoriesText.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(
                  top: 25,
                ),
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: Text(
                  categoriesText[index].categories,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.grey.shade300,
                  ),
                ),
              );
            }),
      ),
    );
  }
}
