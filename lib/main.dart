import 'package:flutter/material.dart';

import 'package:hamstring_trainer_app/routes.dart';
import 'package:hamstring_trainer_app/screen/login/login_screen.dart';
import 'package:hamstring_trainer_app/provider/auth_provider.dart';
import 'package:hamstring_trainer_app/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => AuthProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hamstring Trainer App',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: LoginScreen(),
      routes: routes,
    );
  }
}
