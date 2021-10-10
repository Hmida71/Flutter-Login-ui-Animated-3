import 'dart:async';
import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:You_App_Name/animation/fade_animation.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff141414),
        ),
      ),
      home: const LoginAnimated3(),
    );
  }
}

class LoginAnimated3 extends StatefulWidget {
  const LoginAnimated3({Key? key}) : super(key: key);

  @override
  _LoginAnimated3State createState() => _LoginAnimated3State();
}

class _LoginAnimated3State extends State<LoginAnimated3> {
  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hie = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
          height: hie,
          width: wid,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("icon/back.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SafeArea(
                child: Column(
                  children: [
                    const SizedBox(height: 80),
                    const FadeAnimation(
                      2,
                      Text(
                        "welcome back",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            fontFamily: "Lobster"),
                      ),
                    ),
                    FadeAnimation(
                      2,
                      Container(
                        // color: const Color(0xfff96d34),
                        // color: const Color(0xFFC73800),
                        width: wid,
                        height: 250,
                        margin: const EdgeInsets.only(right: 40),
                        child: Image.asset(
                          "icon/unsplach.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    FadeAnimation(
                      2,
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        padding: const EdgeInsets.only(left: 10),
                        decoration: const BoxDecoration(
                          color: Color(0xFFdedbed),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.person_outline),
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: TextFormField(
                                  maxLines: 1,
                                  decoration: const InputDecoration(
                                    label: Text(" User-Name ..."),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    FadeAnimation(
                      2,
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        padding: const EdgeInsets.only(left: 10),
                        decoration: const BoxDecoration(
                          color: Color(0xFFdedbed),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(Icons.lock_outline),
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: TextFormField(
                                  maxLines: 1,
                                  decoration: const InputDecoration(
                                    label: Text(" Pass-Word..."),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    FadeAnimation(
                      2,
                      Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        decoration: const BoxDecoration(
                          color: Color(0xFF536DFE),
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Expanded(
                          child: Container(
                              child: const Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: const Text(
                        "SingUp if don't have account ",
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 2,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
