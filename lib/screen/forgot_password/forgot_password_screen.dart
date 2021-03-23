import 'package:flutter/material.dart';

import 'package:hamstring_trainer_app/screen/forgot_password/widget/forgot_password_body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static const routeName = '/forgot_password';
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ForgotPasswordBody(formKey: _formKey),
    );
  }
}
