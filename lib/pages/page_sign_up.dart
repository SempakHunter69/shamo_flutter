// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_element

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shamo_flutter/themes.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up',
              style: primaryTextSemiBold.copyWith(fontSize: 24),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Register and Happy Shopping',
              style: thirdTextReguler,
            ),
            SizedBox(
              height: 70,
            ),
          ],
        ),
      );
    }

    Widget fullnameInput() {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Full Name',
              style: primaryTextMedium.copyWith(fontSize: 16),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width - (2 * 30),
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: bgColorBlack2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_name.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextReguler,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your full name',
                          hintStyle: thirdTextReguler,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget usernameInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: primaryTextMedium.copyWith(fontSize: 16),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width - (2 * 30),
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: bgColorBlack2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_username.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextReguler,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your username',
                          hintStyle: thirdTextReguler,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: primaryTextMedium.copyWith(fontSize: 16),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width - (2 * 30),
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: bgColorBlack2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_email.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextReguler,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your email address',
                          hintStyle: thirdTextReguler,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: primaryTextMedium.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width - (2 * 30),
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: bgColorBlack2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_password.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextReguler,
                        obscureText: true,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Password',
                          hintStyle: thirdTextReguler,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget signUpButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Sign Up',
            style: primaryTextMedium.copyWith(fontSize: 16),
          ),
          style: ElevatedButton.styleFrom(
              backgroundColor: primaryColorPurple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )),
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account ?',
              style: thirdTextReguler.copyWith(fontSize: 12),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Sign In',
                  style: GoogleFonts.poppins(
                    color: primaryColorPurple,
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                ))
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColorBlack1,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 30,
          ),
          child: ListView(
            children: [
              header(),
              fullnameInput(),
              usernameInput(),
              emailInput(),
              passwordInput(),
              signUpButton(),
              Spacer(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
