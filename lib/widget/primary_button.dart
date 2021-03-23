import 'package:flutter/material.dart';
import 'package:hamstring_trainer_app/constants.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final void Function()? onTap;

  PrimaryButton({this.label = '', required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 45,
        decoration: BoxDecoration(
            color: primaryColor(context),
            borderRadius: BorderRadius.circular(3)),
        alignment: Alignment.center,
        child: Text(label.toUpperCase(), style: primaryButtonStyle),
      ),
    );
  }
}
