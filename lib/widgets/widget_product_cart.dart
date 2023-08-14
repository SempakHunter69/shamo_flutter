// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shamo_flutter/models/model_product.dart';
import 'package:shamo_flutter/themes.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  ProductCard(this.product);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/product'),
      child: Container(
        width: 215,
        height: 278,
        margin: EdgeInsets.only(
          right: 30,
          top: 14,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: cardColorWhite,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Image.network(
              product.galleries[0].url,
              width: 215,
              height: 150,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.category.name,
                    style: thirdTextReguler.copyWith(fontSize: 12),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    product.name,
                    style: fourthTextSemiBold.copyWith(fontSize: 18),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    '\$${product.price}',
                    style: primaryTextMedium.copyWith(color: priceColorBlue),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
