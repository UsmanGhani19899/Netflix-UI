// ignore_for_file: prefer_const_constructors, avoid_returning_null_for_void

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_ui/screens/authenticate/netflix_carousel.dart';
import 'package:netflix_ui/screens/authenticate/watching.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String email = "";
  String password = "";
  String emailEntered = "usmanghani19@gmail.com";
  String passwordEntered = "12345678";
  final formkey = GlobalKey<FormState>();
  final decoration = const InputDecoration(
    fillColor: Color(0XFF212121),

    filled: true,
    // fillColor:ColorScheme.dark(),
    border: OutlineInputBorder(borderSide: BorderSide.none),
    hintStyle: TextStyle(color: Colors.grey),
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        // ignore: prefer_const_literals_to_create_immutables
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: Container(
              margin: EdgeInsets.only(
                left: 15,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (ctx) => NetflixCarousel()));
                },
                icon: Icon(Icons.arrow_back_outlined),
              )),
        ),
        backgroundColor: Colors.grey[900]!.withOpacity(0.3),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                height: MediaQuery.of(context).size.height * 0.3,
                child: const Image(
                    width: 200,
                    image: AssetImage("asset/image/netflix_logo.png")),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 100,
                child: Form(
                    key: formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          validator: (val) =>
                              email.isEmpty ? "Please enter email" : null,
                          onChanged: (val) {
                            email = val;
                          },
                          cursorColor: Colors.red,
                          style: const TextStyle(color: Colors.white),
                          decoration: decoration.copyWith(hintText: "Email"),
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        TextFormField(
                          validator: (val) => password.isEmpty
                              ? "Please enter password"
                              : password.length < 6
                                  ? "Password is short"
                                  : null,
                          onChanged: (val) {
                            password = val;
                          },
                          cursorColor: Colors.red,
                          obscureText: true,
                          style: const TextStyle(color: Colors.white),
                          decoration: decoration.copyWith(hintText: "Password"),
                        ),
                      ],
                    )),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                height: 55,
                width: MediaQuery.of(context).size.width - 100,
                child: ElevatedButton(
                  onPressed: () {
                    formkey.currentState!.validate();
                    setState(() {
                      if (email.contains(emailEntered) &&
                          password.contains(passwordEntered)) {
                        // ignore: void_checks
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (ctx) => WhoWatching()));
                      } else {
                        return null;
                      }
                    });
                  },
                  style: ButtonStyle(
                      side: MaterialStateProperty.all(
                          BorderSide(color: Colors.grey.shade900)),
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent)),
                  child: const Text("Sign In"),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 40),
                width: MediaQuery.of(context).size.width - 10,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Not a member yet? ",
                      ),
                      TextSpan(text: "Start your free month!")
                    ],
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Text(
                "Forget your password",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
