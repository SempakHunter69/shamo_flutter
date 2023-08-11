// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_flutter/themes.dart';

import '../models/model_user.dart';
import '../providers/provider_auth.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: bgColorBlack1,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: primaryTextMedium.copyWith(fontSize: 18),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.check,
              color: primaryColorPurple,
            ),
          ),
        ],
      );
    }

    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: secondaryTextReguler.copyWith(fontSize: 13),
            ),
            TextFormField(
              style: primaryTextReguler.copyWith(fontSize: 16),
              decoration: InputDecoration(
                hintText: '${user.name}',
                hintStyle: primaryTextReguler.copyWith(fontSize: 16),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: thirdTextColorDarkGrey,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget usernameInput() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: secondaryTextReguler.copyWith(fontSize: 13),
            ),
            TextFormField(
              style: primaryTextReguler.copyWith(fontSize: 16),
              decoration: InputDecoration(
                hintText: '@${user.username}',
                hintStyle: primaryTextReguler.copyWith(fontSize: 16),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: thirdTextColorDarkGrey,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: secondaryTextReguler.copyWith(fontSize: 13),
            ),
            TextFormField(
              style: primaryTextReguler.copyWith(fontSize: 16),
              decoration: InputDecoration(
                hintText: '${user.email}',
                hintStyle: primaryTextReguler.copyWith(fontSize: 16),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: thirdTextColorDarkGrey,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                    '${user.profilePhotoUrl}',
                  ),
                ),
              ),
            ),
            nameInput(),
            usernameInput(),
            emailInput(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColorBlack3,
      appBar: header(),
      body: SafeArea(
        child: content(),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
