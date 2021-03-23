import 'package:flutter/material.dart';
import 'package:hamstring_trainer_app/screen/forgot_password/forgot_password_screen.dart';

import 'package:hamstring_trainer_app/screen/signup/signup_screen.dart';
import 'package:hamstring_trainer_app/widget/app_logo.dart';
import 'package:hamstring_trainer_app/screen/login/widget/login_form.dart';

class LoginBody extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final void Function(BuildContext) submit;

  LoginBody({required this.formKey, required this.submit});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 65,
            ),
            AppLogo(),
            Container(
                margin: EdgeInsets.only(top: 22, bottom: 6),
                child: Text(
                  'Proceed with your',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                )),
            Text('Log In',
                style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.black)),
            SizedBox(
              height: 60,
            ),
            Form(
              key: formKey,
              child: LoginForm(submit: submit),
            ),
            Container(
              margin: EdgeInsets.only(top: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => Navigator.of(context)
                        .pushNamed(ForgotPasswordScreen.routeName),
                    child: Text('Forgot Password',
                        style: TextStyle(color: Colors.black54)),
                  )
                ],
              ),
            ),
            Container(
              height: 100,
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have account? ',
                      style: TextStyle(color: Colors.black54)),
                  InkWell(
                    onTap: () =>
                        Navigator.of(context).pushNamed(SignupScreen.routeName),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
