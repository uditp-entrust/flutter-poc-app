import 'package:flutter/material.dart';

import 'package:hamstring_trainer_app/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String? Function(String?)? validator;
  // final Function validator, onSaved, onChanged;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool enabled;
  final String initialValue;
  final Icon textfieldIcon;

  CustomTextField(
      {this.hintText = '',
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      // this.validator = const abc () {},
      // this.onSaved,
      this.enabled = true,
      this.initialValue = '',
      this.validator,
      // this.onChanged,
      this.textfieldIcon = const Icon(Icons.person)});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: TextFormField(
        enabled: enabled,
        initialValue: initialValue,
        validator: validator,
        // onSaved: onSaved,
        // onChanged: onChanged,
        keyboardType: keyboardType,
        style: customTextFieldStyle,
        obscureText: obscureText,
        decoration:
            InputDecoration(labelText: hintText, suffixIcon: textfieldIcon),
      ),
    );
  }
}
