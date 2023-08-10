// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shamo_flutter/themes.dart';

class CheckOutCard extends StatelessWidget {
  const CheckOutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      margin: EdgeInsets.symmetric(vertical: 12),
      width: MediaQuery.of(context).size.width - (2 * 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: bgColorBlack4,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/image_shoes.png',
              width: 60,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Terrex Urban Low',
                  style: primaryTextSemiBold,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '\$100',
                  style: primaryTextReguler.copyWith(
                    color: priceColorBlue,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            '2 Items',
            style: secondaryTextReguler.copyWith(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
