// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shamo_flutter/themes.dart';

class CheckOutSuccessPage extends StatelessWidget {
  const CheckOutSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: bgColorBlack1,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'Checkout Success',
          style: primaryTextMedium.copyWith(fontSize: 18),
        ),
        elevation: 0,
      );
    }

    Widget content() {
      return Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon_empty_cart.png',
                width: 80,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'You made a transaction',
                style: primaryTextMedium.copyWith(fontSize: 16),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Stay at home while we \n prepare your dream shoes',
                style: secondaryTextReguler,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: MediaQuery.of(context).size.width - (2 * 90),
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Order Other Shoes',
                    style: primaryTextMedium.copyWith(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: primaryColorPurple,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width - (2 * 90),
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'View My Order',
                    style: secondaryTextMedium.copyWith(fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: bgColorBlack5,
                  ),
                ),
              )
            ],
          ));
    }

    return Scaffold(
      backgroundColor: bgColorBlack3,
      appBar: header(),
      body: content(),
    );
  }
}
