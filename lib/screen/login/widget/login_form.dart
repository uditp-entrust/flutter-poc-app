import 'package:flutter/material.dart';

import 'package:hamstring_trainer_app/widget/custom_text_field.dart';
import 'package:hamstring_trainer_app/widget/primary_button.dart';

class LoginForm extends StatelessWidget {
  final void Function(BuildContext) submit;

  LoginForm({required this.submit});

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
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Required field';
                    }
                    if (!value.contains('@')) {
                      return 'Invalid email!';
                    }
                  }),
              CustomTextField(
                  hintText: "Password",
                  textfieldIcon: Icon(Icons.lock),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Required field';
                    }
                  })
            ],
          ),
        ),
        SizedBox(
          height: 24,
        ),
        PrimaryButton(
          label: "Login",
          onTap: () => submit(context),
        )
      ],
    );
  }
}
