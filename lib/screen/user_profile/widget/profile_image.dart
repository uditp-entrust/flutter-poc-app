import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final double topPosition, leftPosition;

  ProfileImage({required this.topPosition, required this.leftPosition});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topPosition,
      left: leftPosition,
      child: Container(
        height: 130,
        width: 130,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2.5),
            borderRadius: BorderRadius.circular(100)),
        child: CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/images/profile.jpg')),
      ),
    );
  }
}
