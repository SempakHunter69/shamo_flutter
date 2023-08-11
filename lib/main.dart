// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_flutter/pages/home/page_main.dart';
import 'package:shamo_flutter/pages/page_cart.dart';
import 'package:shamo_flutter/pages/page_checkout.dart';
import 'package:shamo_flutter/pages/page_checkout_success.dart';
import 'package:shamo_flutter/pages/page_detail_chat.dart';
import 'package:shamo_flutter/pages/page_edit_profile.dart';
import 'package:shamo_flutter/pages/page_product.dart';
import 'package:shamo_flutter/pages/page_sign_in.dart';
import 'package:shamo_flutter/pages/page_sign_up.dart';
import 'package:shamo_flutter/pages/page_splash.dart';
import 'package:shamo_flutter/providers/provider_auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        )
      ],
      child: MaterialApp(
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
          '/edit-profile': (context) => EditProfile(),
          '/product': (context) => ProductPage(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckOutPage(),
          '/checkout-success': (context) => CheckOutSuccessPage(),
        },
      ),
    );
  }
}
