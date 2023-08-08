// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar();
    }

    return Column(
      children: [
        header(),
      ],
    );
  }
}
