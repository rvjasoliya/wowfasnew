import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wowfasnew/utils/socialButtons/socialButtons.dart';

class SocialLogin extends StatefulWidget {
  @override
  SocialLoginState createState() => SocialLoginState();
}

class SocialLoginState extends State<SocialLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          if (Platform.isIOS)
            _decorator(SocialButtons.apple(
              onPress: () => loginApple(context),
            )),
          _decorator(SocialButtons.google(onPress: () => loginGoogle(context))),
          _decorator(
              SocialButtons.facebook(onPress: () => loginFacebook(context))),
        ],
      ),
    );
  }

  void loginApple(BuildContext context) {}

  void loginGoogle(BuildContext context) {}

  void loginFacebook(BuildContext context) {}

  Widget _decorator(Widget child) {
    return Container(
      height: 50,
      width: 50,
      child: Center(child: child),
    );
  }
}
