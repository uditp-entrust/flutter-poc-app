import 'package:flutter/material.dart';
import 'package:hamstring_trainer_app/constants.dart';

class UserProfileAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Container(
        margin: EdgeInsets.all(screenMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.arrow_back,
                    size: appbarIconSize,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Profile',
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
