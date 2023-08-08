// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shamo_flutter/themes.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-chat');
      },
      child: Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/image_store_logo.png',
                  width: 54,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shoe Store',
                        style: primaryTextReguler.copyWith(fontSize: 15),
                      ),
                      Text(
                        'Good night, This item in on sale',
                        overflow: TextOverflow.ellipsis,
                        style: secondaryTextLight,
                      )
                    ],
                  ),
                ),
                Text(
                  'Now',
                  style: secondaryTextReguler.copyWith(fontSize: 10),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Divider(
              thickness: 1,
              color: bgColorBlack1,
            )
          ],
        ),
      ),
    );
  }
}
