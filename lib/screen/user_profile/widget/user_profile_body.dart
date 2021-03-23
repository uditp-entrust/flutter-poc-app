import 'package:flutter/material.dart';
import 'package:hamstring_trainer_app/constants.dart';
import 'package:hamstring_trainer_app/screen/user_profile/widget/profile_image.dart';
import 'package:hamstring_trainer_app/screen/user_profile/widget/user_menu_list.dart';
import 'package:hamstring_trainer_app/screen/user_profile/widget/user_profile_appbar.dart';

class UserProfileBody extends StatelessWidget {
  final BuildContext userProfileContext;

  UserProfileBody({required this.userProfileContext});

  @override
  Widget build(BuildContext context) {
    double screenHeight = getScreenHeight(userProfileContext) -
        getStatusBarHeight(userProfileContext);

    return SafeArea(
      child: Container(
        child: Stack(
          children: [
            Column(children: [
              Container(
                height: screenHeight * 0.3,
                color: primaryColor(context),
              ),
              Container(
                height: screenHeight * 0.7,
              ),
            ]),
            UserProfileAppbar(),
            Stack(
              children: [
                UserMenuList(
                    leftPosition: (MediaQuery.of(userProfileContext)
                                .size
                                .width /
                            2) -
                        (MediaQuery.of(userProfileContext).size.width - 40) / 2,
                    topPosition: screenHeight * 0.2,
                    screenHeight: screenHeight,
                    width: getScreenWidth(userProfileContext) - 40),
                ProfileImage(
                    topPosition: screenHeight * 0.12,
                    leftPosition: (getScreenWidth(userProfileContext) / 2) - 65)
              ],
            )
          ],
        ),
      ),
    );
  }
}
