// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:shamo_flutter/themes.dart';
import 'package:shamo_flutter/widgets/widget_checkout_card.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: bgColorBlack1,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Checkout Details',
          style: primaryTextMedium.copyWith(fontSize: 18),
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'List Items',
                  style: primaryTextMedium.copyWith(fontSize: 16),
                ),
                CheckOutCard(),
                CheckOutCard(),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: bgColorBlack4,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Address Details',
                  style: primaryTextMedium.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/icon_store_location.png',
                          width: 40,
                        ),
                        Image.asset(
                          'assets/icon_line.png',
                          height: 30,
                        ),
                        Image.asset(
                          'assets/icon_your_address.png',
                          width: 40,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Store Location',
                          style: secondaryTextLight.copyWith(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Adidas Core',
                          style: primaryTextMedium.copyWith(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Your Address',
                          style: secondaryTextLight.copyWith(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Pontianak',
                          style: primaryTextMedium.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 30,
            ),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: bgColorBlack4,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Payment Summary',
                  style: primaryTextMedium.copyWith(fontSize: 16),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product Quantity',
                      style: secondaryTextReguler.copyWith(fontSize: 12),
                    ),
                    Text(
                      '2 Items',
                      style: primaryTextMedium.copyWith(fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product Price',
                      style: secondaryTextReguler.copyWith(fontSize: 12),
                    ),
                    Text(
                      '\$200',
                      style: primaryTextMedium.copyWith(fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shipping',
                      style: secondaryTextReguler.copyWith(fontSize: 12),
                    ),
                    Text(
                      'Free',
                      style: primaryTextMedium.copyWith(fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Divider(
                  thickness: 1,
                  color: thirdTextColorDarkGrey,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: secondaryTextMedium.copyWith(
                          fontSize: 14, color: priceColorBlue),
                    ),
                    Text(
                      '\$200',
                      style: primaryTextMedium.copyWith(
                          fontSize: 14, color: priceColorBlue),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Divider(
            thickness: 1,
            color: thirdTextColorDarkGrey,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            height: 50,
            width: MediaQuery.of(context).size.width - (2 * 30),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/checkout-success', (route) => false);
              },
              child: Text(
                'Checkout Now',
                style: primaryTextSemiBold.copyWith(fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: primaryColorPurple,
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgColorBlack3,
      appBar: header(),
      body: content(),
    );
  }
}
