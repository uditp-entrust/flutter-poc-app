import 'package:flutter/material.dart';
import 'package:hamstring_trainer_app/screen/login/login_screen.dart';
import 'package:hamstring_trainer_app/widget/custom_text_field.dart';
import 'package:hamstring_trainer_app/widget/primary_button.dart';

class ForgotPasswordForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 90,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomTextField(
                hintText: "Email",
                textfieldIcon: Icon(Icons.email),
                keyboardType: TextInputType.emailAddress,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 24,
        ),
        PrimaryButton(
          label: "Send Reset Password Link",
          onTap: () => Navigator.of(context).pushNamed(LoginScreen.routeName),
        )
      ],
    );
  }
}
