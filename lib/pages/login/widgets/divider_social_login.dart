import 'package:flutter/material.dart';
import 'package:wowfasnew/config/app_color.dart';
import 'package:wowfasnew/config/app_text_styles.dart';

Widget DividerSocialLogin() {
  return Stack(
    alignment: AlignmentDirectional.center,
    children: <Widget>[
      Divider(
        indent: 20,
        endIndent: 20,
        thickness: 2,
        color: AppColor.lightGrey,
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        color: Colors.white,
        child: Text(
          "Or",
          style: AppTextStyle.h3TitleTextStyle(
              fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),
    ],
  );
}
