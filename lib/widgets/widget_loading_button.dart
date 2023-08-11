import 'package:flutter/material.dart';
import 'package:shamo_flutter/themes.dart';

class LoadingButton extends StatelessWidget {
  const LoadingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation(primaryTextColorWhite),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'Loading',
              style: primaryTextMedium.copyWith(fontSize: 16),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: primaryColorPurple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
      ),
    );
  }
}
