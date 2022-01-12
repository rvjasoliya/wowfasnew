import 'package:flutter/material.dart';
import 'package:wowfasnew/config/app_color.dart';
import 'package:wowfasnew/config/app_text_styles.dart';

Widget GuestWidget(){
  return InkWell(
    onTap: () {
      /*  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute<void>(builder: (BuildContext context) => SignUpScreen()),
                      ModalRoute.withName(AppRoutes.signupRoute),
                    );*/
    },
    child: Text("Continue as Guest",
        style: AppTextStyle.h3TitleTextStyle(fontSize: 14,color: AppColor.primaryDark,fontWeight: FontWeight.w600)),
  );
}