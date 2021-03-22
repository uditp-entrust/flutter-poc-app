// Ref: https://github.com/FilledStacks/flutter-tutorials/tree/master/012-provider-architecture-pt2/2-final/lib/core

import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:hamstring_trainer_app/apiEndPoint.dart';
import 'package:hamstring_trainer_app/model/user/user.dart';

class AuthenticationService {
  static const apiEndPoint = ApiEndPoint.API_END_POINT;

  Future<void> signup(User user) async {
    try {
      await http.post(
        Uri.https(apiEndPoint, 'api/auth/register'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: user.toJson(),
      );
    } catch (err) {
      print('failed to signup user $err');
      throw err;
    }
  }

  Future<User> login(String email, String password) async {
    try {
      User createUser = User(email: email, password: password);
      var response = await http.post(
        Uri.https(apiEndPoint, 'api/auth/login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: createUser.toJson(),
      );
      User newUser = User.fromJson(jsonDecode(response.body));

      return newUser;
    } catch (err) {
      print('failed to login $err');
      throw err;
    }
  }

  Future<void> resetPassword(String email) async {
    try {
      await http.post(
        Uri.https(apiEndPoint, 'api/auth/forgotpassword'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'email': email,
        }),
      );
    } catch (err) {
      print('failed to login $err');
      throw err;
    }
  }
}
