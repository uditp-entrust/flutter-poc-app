import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:hamstring_trainer_app/model/user/user.dart';
import 'package:hamstring_trainer_app/services/authentication_service.dart';

class AuthProvider with ChangeNotifier {
  User _authData = User(email: '');
  AuthenticationService authService = AuthenticationService();

  bool get isAuthenticated {
    return _authData.authToken != '';
  }

  User get authData {
    return _authData;
  }

  Future<void> loginUser(String email, String password) async {
    try {
      _authData = await authService.login(email, password);
      notifyListeners();

      final prefs = await SharedPreferences.getInstance();
      prefs.setString(
          'userData',
          jsonEncode({
            'token': _authData.authToken,
            'userId': _authData.id,
          }));
    } catch (err) {
      print('failed to login user');
      throw err;
    }
  }

  Future<bool> tryAutoLogin() async {
    final prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey('userData')) {
      return false;
    }
    Map<String, String> extractedUserData =
        json.decode(prefs.getString('userData')!) as Map<String, String>;
    final token = extractedUserData['token'];
    if (token == null || token == '') {
      return false;
    }
    _authData.authToken = token;
    _authData.id = (extractedUserData['userId'] == null
        ? ''
        : extractedUserData['userId'])!;

    notifyListeners();
    return true;
  }

  Future<void> logout() async {
    _authData.authToken = '';
    _authData.id = '';
    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
    notifyListeners();
  }
}
