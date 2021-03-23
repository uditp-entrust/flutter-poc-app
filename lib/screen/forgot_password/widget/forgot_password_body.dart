import 'package:flutter/material.dart';
import 'package:hamstring_trainer_app/screen/forgot_password/widget/forgot_password_form.dart';
import 'package:hamstring_trainer_app/screen/forgot_password/widget/forgot_password_header.dart';
import 'package:hamstring_trainer_app/screen/login/login_screen.dart';
import 'package:hamstring_trainer_app/widget/app_logo.dart';

class ForgotPasswordBody extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  ForgotPasswordBody({required this.formKey});

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
            ForgotPasswordHeader(),
            SizedBox(
              height: 30,
            ),
            Form(key: formKey, child: ForgotPasswordForm()),
            Container(
              margin: EdgeInsets.only(top: 40),
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () =>
                    Navigator.of(context).pushNamed(LoginScreen.routeName),
                child: Text(
                  'Back To Login',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w900),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
