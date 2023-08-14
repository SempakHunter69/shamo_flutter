// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shamo_flutter/models/model_product.dart';
import 'package:shamo_flutter/themes.dart';

class ProductTile extends StatelessWidget {
  final ProductModel product;
  ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/product'),
      child: Container(
        margin: EdgeInsets.only(right: 30, bottom: 30),
        height: 120,
        child: Row(
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(product.galleries[0].url),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 11,
                  ),
                  Text(
                    product.category.name,
                    style: thirdTextReguler.copyWith(fontSize: 12),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    product.name,
                    overflow: TextOverflow.ellipsis,
                    style: primaryTextSemiBold.copyWith(
                      fontSize: 16,
                    ),
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
            ),
          ],
        ),
      ),
    );
  }
}
