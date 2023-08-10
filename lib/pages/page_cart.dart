// ignore_for_file: prefer_const_constructors, unused_element, sort_child_properties_last, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shamo_flutter/themes.dart';

import '../widgets/widget_cart_card.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: bgColorBlack1,
        centerTitle: true,
        title: Text(
          'Your Cart',
          style: primaryTextMedium.copyWith(fontSize: 18),
        ),
        elevation: 0,
      );
    }

    Widget emptyCart() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_empty_cart.png',
              width: 80,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Opsss! Your Cart is Empty !',
              style: primaryTextMedium.copyWith(fontSize: 16),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Let\'s find your favorite shoes !',
              style: secondaryTextReguler,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Text(
                'Explore Store',
                style: primaryTextMedium.copyWith(fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColorPurple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: 30),
        children: [
          CartCard(),
          CartCard(),
          CartCard(),
        ],
      );
    }

    Widget customBottomNav() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        height: 160,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal',
                  style: primaryTextReguler,
                ),
                Text(
                  '\$100',
                  style: primaryTextSemiBold.copyWith(
                    color: priceColorBlue,
                    fontSize: 16,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              thickness: 0.3,
              color: thirdTextColorDarkGrey,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width - (2 * 30),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/checkout');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Continue to Checkout',
                      style: primaryTextSemiBold.copyWith(fontSize: 16),
                    ),
                    Icon(
                      Icons
                          .navigate_next, // Replace with the icon you want to use
                      color: Colors.white,
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColorPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColorBlack3,
      appBar: header(),
      body: content(),
      bottomNavigationBar: customBottomNav(),
    );
  }
}
