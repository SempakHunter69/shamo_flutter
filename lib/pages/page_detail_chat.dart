// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shamo_flutter/themes.dart';
import 'package:shamo_flutter/widgets/widget_chat_buble.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({super.key});

  PreferredSizeWidget header() {
    return PreferredSize(
      child: AppBar(
        backgroundColor: bgColorBlack1,
        centerTitle: false,
        title: Row(
          children: [
            Image.asset(
              'assets/image_store_online.png',
              width: 50,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shoe Store',
                  style: primaryTextMedium,
                ),
                Text(
                  'Online',
                  style: thirdTextMedium.copyWith(fontWeight: light),
                )
              ],
            )
          ],
        ),
      ),
      preferredSize: Size.fromHeight(70),
    );
  }

  Widget productPreview() {
    return Container(
      width: 225,
      height: 74,
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: bgColorPurpleDark2,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: primaryColorPurple),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/image_shoes.png',
              width: 54,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'COURT VISION 2.0',
                  overflow: TextOverflow.ellipsis,
                  style: primaryTextReguler,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '\$52,15',
                  style: primaryTextMedium.copyWith(
                    color: priceColorBlue,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/btn_close.png',
            width: 22,
          ),
        ],
      ),
    );
  }

  Widget chatInput() {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          productPreview(),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                      color: bgColorBlack4,
                      borderRadius: BorderRadius.circular(12)),
                  child: TextFormField(
                    style: primaryTextReguler,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Type message...',
                      hintStyle: thirdTextReguler,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Image.asset(
                'assets/btn_send.png',
                width: 45,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget content() {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 30),
      children: [
        ChatBubble(
          isSender: true,
          text: 'Hi, are this item still available ?',
          hasProduct: true,
        ),
        ChatBubble(
          isSender: false,
          text: 'Good night, This item is only available in size 42 and 43',
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColorBlack3,
      appBar: header(),
      body: content(),
      bottomNavigationBar: chatInput(),
    );
  }
}
