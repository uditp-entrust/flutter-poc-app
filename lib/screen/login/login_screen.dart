import 'package:flutter/material.dart';

import 'package:hamstring_trainer_app/screen/login/widget/login_body.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';

  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBody(formKey: _formKey),
    );
  }
}
