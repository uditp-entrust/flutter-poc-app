import 'package:flutter/widgets.dart';
import 'package:hamstring_trainer_app/screen/forgot_password/forgot_password_screen.dart';

import 'package:hamstring_trainer_app/screen/login/login_screen.dart';
import 'package:hamstring_trainer_app/screen/signup/signup_screen.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  SignupScreen.routeName: (context) => SignupScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen()
};
