// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shamo_flutter/themes.dart';
import 'package:shamo_flutter/widgets/widget_chat_tile.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  Widget header() {
    return AppBar(
      backgroundColor: bgColorBlack1,
      centerTitle: true,
      title: Text(
        'Message Support',
        style: primaryTextMedium.copyWith(fontSize: 18),
      ),
      elevation: 0,
      automaticallyImplyLeading: false,
    );
  }

  Widget emptyChat() {
    return Expanded(
      child: Container(
        color: bgColorBlack3,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_customer_services.png',
              width: 80,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Oopps no message yet ?',
              style: primaryTextMedium.copyWith(fontSize: 16),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'You have never done a transaction',
              style: thirdTextReguler,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 44,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColorPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                ),
                child: Text(
                  'Explore Store',
                  style: primaryTextMedium.copyWith(fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget content() {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: bgColorBlack3,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30),
          children: [
            ChatTile(),
            ChatTile(),
            ChatTile(),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
