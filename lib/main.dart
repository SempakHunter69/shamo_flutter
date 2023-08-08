// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shamo_flutter/pages/home/page_main.dart';
import 'package:shamo_flutter/pages/page_detail_chat.dart';
import 'package:shamo_flutter/pages/page_sign_in.dart';
import 'package:shamo_flutter/pages/page_sign_up.dart';
import 'package:shamo_flutter/pages/page_splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shamo Flutter',
      routes: {
        '/': (context) {
          return SplashPage();
        },
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/detail-chat': (context) => DetailChatPage(),
      },
    );
  }
}
