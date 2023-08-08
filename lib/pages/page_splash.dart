// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shamo_flutter/themes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/sign-in'),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColorBlack1,
      body: Center(
        child: Container(
          width: 130,
          height: 150,
          child: Image.asset(
            'assets/image_splash.png',
          ),
        ),
      ),
    );
  }
}
