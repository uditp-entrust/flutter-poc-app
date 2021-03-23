import 'package:flutter/material.dart';
import 'package:hamstring_trainer_app/screen/signup/widget/signup_body.dart';

class SignupScreen extends StatelessWidget {
  static const routeName = '/signup';
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignupBody(formKey: _formKey),
    );
  }
}
