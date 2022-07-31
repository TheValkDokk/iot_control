import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

import '../../addons/custom_fade_route.dart';
import '../../constant.dart';
import '../../service/auth_service.dart';
import '../page_navigator.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      theme: LoginTheme(
        pageColorLight: Colors.white,
        pageColorDark: const Color(0xFF368EA5),
        cardTheme: const CardTheme(color: Colors.white),
        accentColor: Constants.accentColor,
        primaryColor: Constants.primaryColor,
        buttonStyle: const TextStyle(
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
      ),
      title: Constants.app_name,
      logo: const AssetImage(Constants.LOGO_URL),
      logoTag: Constants.logo_tag,
      titleTag: Constants.title_tag,
      onLogin: (data) {
        return AuthService().loginUser(data);
      },
      onRecoverPassword: AuthService().recoverPassword,
      onSignup: (data) {
        return AuthService().signupUser(data);
      },
      userValidator: (value) {
        if (value!.isEmpty) {
          return "Can not be empty";
        }
        return null;
      },
      passwordValidator: (value) {
        if (value!.isEmpty) {
          return 'Password is empty';
        }
        return null;
      },
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(FadePageRoute(
          builder: (context) => const PageNavigator(),
        ));
      },
    );
  }
}
