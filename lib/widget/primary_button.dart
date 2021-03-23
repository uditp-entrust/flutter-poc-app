import 'package:flutter/material.dart';
import 'package:hamstring_trainer_app/constants.dart';

class PrimaryButton extends StatelessWidget {
  final String label;

  PrimaryButton({this.label = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
          color: primaryColor(context), borderRadius: BorderRadius.circular(3)),
      alignment: Alignment.center,
      child: Text(label.toUpperCase(), style: primaryButtonStyle),
    );
  }
}
