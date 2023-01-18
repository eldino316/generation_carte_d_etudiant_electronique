// ignore_for_file: camel_case_types, library_private_types_in_public_api, prefer_const_constructors, non_constant_identifier_names

import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hoaviko/pages/contexte.dart';
import 'package:lottie/lottie.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 10),
        (() => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => contexte(),
            ))));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              LottieSection,
              Spinkit,
              TextAnnimation,
            ],
          )),
    );
  }

  Widget LottieSection = Center(
    child: Lottie.asset('assets/images/study.json'),
  );

  Widget Spinkit = Center(
    child: SpinKitRotatingCircle(
      color: Color.fromARGB(31, 5, 35, 183),
      size: 60.0,
    ),
  );

  Widget TextAnnimation = Center(
    child: DefaultTextStyle(
      style: TextStyle(
        fontSize: 30.0,
        fontFamily: 'Bobbers',
      ),
      child: AnimatedTextKit(
        animatedTexts: [
          TyperAnimatedText('Tongasoa Ianao !'),
          TyperAnimatedText('Vous êtes la bienvenue !'),
          TyperAnimatedText('You are Welcome !'),
        ],
      ),
    ),
  );
}
