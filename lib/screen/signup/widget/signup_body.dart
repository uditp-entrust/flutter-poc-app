import 'package:flutter/material.dart';
import 'package:hamstring_trainer_app/screen/login/login_screen.dart';
import 'package:hamstring_trainer_app/screen/signup/widget/signup_form.dart';
import 'package:hamstring_trainer_app/widget/app_logo.dart';
import 'package:hamstring_trainer_app/widget/auth_header.dart';

class SignupBody extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  SignupBody({required this.formKey});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(left: 35, right: 35, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            AppLogo(),
            AuthHeader(
              header: 'Sign Up',
            ),
            SizedBox(
              height: 16,
            ),
            Form(key: formKey, child: SignupForm()),
            Container(
              height: 30,
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have account? ',
                      style: TextStyle(color: Colors.black54)),
                  InkWell(
                    onTap: () =>
                        Navigator.of(context).pushNamed(LoginScreen.routeName),
                    child: Text(
                      'Log In',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w900),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
