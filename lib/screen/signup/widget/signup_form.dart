import 'package:flutter/material.dart';
import 'package:hamstring_trainer_app/screen/login/login_screen.dart';
import 'package:hamstring_trainer_app/widget/custom_text_field.dart';
import 'package:hamstring_trainer_app/widget/primary_button.dart';

class SignupForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomTextField(
                hintText: "First Name",
                textfieldIcon: Icon(Icons.person),
              ),
              CustomTextField(
                hintText: "Last Name",
                textfieldIcon: Icon(Icons.person),
              ),
              CustomTextField(
                hintText: "Email",
                textfieldIcon: Icon(Icons.email),
                keyboardType: TextInputType.emailAddress,
              ),
              CustomTextField(
                hintText: 'Phone Number',
                textfieldIcon: Icon(Icons.phone_android),
                keyboardType: TextInputType.phone,
              ),
              CustomTextField(
                hintText: "Password",
                textfieldIcon: Icon(Icons.lock),
                obscureText: true,
              ),
              CustomTextField(
                hintText: "Confirm Password",
                textfieldIcon: Icon(Icons.lock),
                obscureText: true,
              )
            ],
          ),
        ),
        SizedBox(
          height: 35,
        ),
        PrimaryButton(
          label: "Signup",
          onTap: () => Navigator.of(context).pushNamed(LoginScreen.routeName),
        )
      ],
    );
  }
}
