import 'package:flutter/material.dart';
import 'package:hamstring_trainer_app/constants.dart';
import 'package:hamstring_trainer_app/screen/login/login_screen.dart';

class UserMenuList extends StatelessWidget {
  final double screenHeight, width, topPosition, leftPosition;

  UserMenuList(
      {required this.leftPosition,
      required this.topPosition,
      required this.screenHeight,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topPosition,
      left: leftPosition,
      child: Container(
        height: screenHeight * 0.6,
        width: width,
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Container(
                child: Text(
                  'Jack Ryan',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                child: Text(
                  'jackryan@gmail.com',
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.black54),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(color: Colors.black38),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.edit),
                    title: Text(
                      'Edit Profile',
                      style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.w700),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios, size: 17),
                  ),
                  ListTile(
                    leading: Icon(Icons.lock),
                    title: Text('Change Password',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w700)),
                    trailing: Icon(Icons.arrow_forward_ios, size: 17),
                    onTap: () => {},
                  ),
                  ListTile(
                      onTap: () {},
                      leading: Icon(Icons.assignment),
                      title: Text('My Orders',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w700)),
                      trailing: Icon(Icons.arrow_forward_ios, size: 17)),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.place),
                    title: Text('My Addresses',
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w700)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                    ),
                  ),
                  ListTile(
                    onTap: () async {
                      Navigator.of(context)
                          .pushReplacementNamed(LoginScreen.routeName);
                    },
                    title: Text(
                      'Logout',
                      style: TextStyle(
                          color: errorColor(context),
                          fontWeight: FontWeight.w700),
                    ),
                    leading:
                        Icon(Icons.exit_to_app, color: errorColor(context)),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                      color: errorColor(context),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
