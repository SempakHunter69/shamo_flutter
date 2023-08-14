// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_flutter/models/model_user.dart';
import 'package:shamo_flutter/providers/provider_auth.dart';
import 'package:shamo_flutter/providers/provider_product.dart';
import 'package:shamo_flutter/themes.dart';
import 'package:shamo_flutter/widgets/widget_product_cart.dart';
import 'package:shamo_flutter/widgets/widget_product_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;
    ProductProvider productProvider = Provider.of<ProductProvider>(context);

    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 30,
          right: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hallo, ${user.name}',
                    style: primaryTextSemiBold.copyWith(fontSize: 24),
                  ),
                  Text(
                    '@${user.username}',
                    style: thirdTextReguler.copyWith(fontSize: 16),
                  )
                ],
              ),
            ),
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                    user.profilePhotoUrl,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColorPurple,
                ),
                child: Text(
                  'All Shoes',
                  style: primaryTextMedium.copyWith(
                    fontSize: 13,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transaparant,
                  border: Border.all(color: bgColorBlack4),
                ),
                child: Text(
                  'Running',
                  style: thirdTextMedium.copyWith(
                    fontSize: 13,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transaparant,
                  border: Border.all(color: bgColorBlack4),
                ),
                child: Text(
                  'Training',
                  style: thirdTextMedium.copyWith(
                    fontSize: 13,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transaparant,
                  border: Border.all(color: bgColorBlack4),
                ),
                child: Text(
                  'Basket Ball',
                  style: thirdTextMedium.copyWith(
                    fontSize: 13,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: transaparant,
                  border: Border.all(color: bgColorBlack4),
                ),
                child: Text(
                  'Hiking',
                  style: thirdTextMedium.copyWith(
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget popularProductTitle() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: 30),
        child: Text(
          'Popular Products',
          style: primaryTextSemiBold.copyWith(fontSize: 22),
        ),
      );
    }

    Widget popularProducts() {
      return Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Row(
                children: productProvider.products
                    .map((product) => ProductCard(product))
                    .toList(),
              ),
            ],
          ),
        ),
      );
    }

    Widget newArrivalsTitle() {
      return Container(
        margin: EdgeInsets.only(top: 30, left: 30),
        child: Text(
          'New Arrivals',
          style: primaryTextSemiBold.copyWith(fontSize: 22),
        ),
      );
    }

    Widget newArrivals() {
      return Container(
        margin: EdgeInsets.only(top: 14, left: 30),
        child: Column(
          children: productProvider.products
              .map((product) => ProductTile(product))
              .toList(),
        ),
      );
    }

    return ListView(
      children: [
        header(),
        categories(),
        popularProductTitle(),
        popularProducts(),
        newArrivalsTitle(),
        newArrivals(),
      ],
    );
  }
}
