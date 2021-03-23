import 'package:flutter/material.dart';

import 'package:hamstring_trainer_app/screen/user_profile/widget/user_profile_body.dart';

class UserProfileScreen extends StatelessWidget {
  static const routeName = '/user_profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: UserProfileBody(userProfileContext: context));
  }
}
