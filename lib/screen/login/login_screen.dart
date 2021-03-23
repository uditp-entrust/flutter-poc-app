import 'package:flutter/material.dart';

import 'package:hamstring_trainer_app/screen/login/widget/login_body.dart';
import 'package:hamstring_trainer_app/screen/user_profile/user_profile_screen.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';

  final GlobalKey<FormState> _formKey = GlobalKey();

  void _submit(BuildContext context) {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    Navigator.of(context).pushNamed(UserProfileScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBody(
        formKey: _formKey,
        submit: _submit,
      ),
    );
  }
}
