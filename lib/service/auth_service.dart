import 'package:flutter/scheduler.dart';
import 'package:flutter_login/flutter_login.dart';

class AuthService {
  //TODO to be removed when the login is implemented
  Duration get loginTime => Duration(milliseconds: timeDilation.ceil() * 2250);

  Future<String?> recoverPassword(String name) {
    return Future.delayed(loginTime).then((_) {
      if (name != 'valk') {
        return 'User not exists';
      }
      return null;
    });
  }

  Future<String?> signupUser(SignupData data) {
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  Future<String?> loginUser(LoginData data) {
    return Future.delayed(loginTime).then((_) {
      if (data.name != 'test') {
        return 'User not exists';
      }
      if (data.password != '123') {
        return 'Password does not match';
      }
      return null;
    });
  }
}
