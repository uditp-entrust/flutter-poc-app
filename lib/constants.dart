import 'package:flutter/material.dart';

final customTextFieldStyle =
    TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black);

final primaryButtonStyle =
    TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w500);

Color primaryColor(BuildContext context) => Theme.of(context).primaryColor;
Color errorColor(BuildContext context) => Theme.of(context).errorColor;

double getScreenHeight(BuildContext context) =>
    MediaQuery.of(context).size.height;

double getScreenWidth(BuildContext context) =>
    MediaQuery.of(context).size.width;

double getStatusBarHeight(BuildContext context) =>
    MediaQuery.of(context).padding.top;

final screenMargin = 16.0;

final appbarIconSize = 30.0;
