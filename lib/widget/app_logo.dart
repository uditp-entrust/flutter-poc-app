import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final double height, width;

  AppLogo({this.height = 100, this.width = 100});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        child: Image.asset("assets/images/app-logo.png"));
  }
}
