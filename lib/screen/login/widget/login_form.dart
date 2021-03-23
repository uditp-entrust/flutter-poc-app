import 'package:flutter/material.dart';
import 'package:hamstring_trainer_app/screen/user_profile/user_profile_screen.dart';
import 'package:hamstring_trainer_app/widget/custom_text_field.dart';
import 'package:hamstring_trainer_app/widget/primary_button.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomTextField(
                hintText: "Email",
                textfieldIcon: Icon(Icons.email),
                keyboardType: TextInputType.emailAddress,
              ),
              CustomTextField(
                hintText: "Password",
                textfieldIcon: Icon(Icons.lock),
                obscureText: true,
              )
            ],
          ),
        ),
        SizedBox(
          height: 24,
        ),
        PrimaryButton(
          label: "Login",
          onTap: () =>
              Navigator.of(context).pushNamed(UserProfileScreen.routeName),
        )
      ],
    );
  }
}
