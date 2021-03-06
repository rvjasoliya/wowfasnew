import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wowfasnew/config/app_color.dart';
import 'package:wowfasnew/config/app_text_styles.dart';
import 'package:wowfasnew/config/config.dart';
import 'package:wowfasnew/pages/login/widgets/decoration_fields.dart';
import 'package:wowfasnew/pages/login/widgets/divider_social_login.dart';
import 'package:wowfasnew/pages/login/widgets/guest_widget.dart';
import 'package:wowfasnew/pages/login/widgets/image_header.dart';
import 'package:wowfasnew/pages/login/widgets/login_form.dart';
import 'package:wowfasnew/pages/login/widgets/social_login_view.dart';
import 'package:wowfasnew/pages/signup/signup_page.dart';
import 'package:wowfasnew/routes/app_routes.dart';
import 'package:wowfasnew/utils/ui_spacer.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 5,
                  child: ImageHeader(),
                ),
               LoginForm(),
                UiSpacer.verticalSpace(space: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don\'t have an account? ",
                      style:AppTextStyle.h3TitleTextStyle(fontSize: 14,color: AppColor.primary) /*TextStyle(
                        fontFamily: "ProductSans",
                        color: Color(0xFF363B64),
                        fontSize: 14,
                      )*/,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute<void>(builder: (BuildContext context) => SignUpScreen()),
                          ModalRoute.withName(AppRoutes.signupRoute),
                        );
                      },
                      child: Text("Sign Up.",
                          style: AppTextStyle.h3TitleTextStyle(fontSize: 14,color: AppColor.primaryDark,fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
                UiSpacer.verticalSpace(),
                GuestWidget(),
                UiSpacer.verticalSpace(),
                DividerSocialLogin(),
                UiSpacer.verticalSpace(),
                SocialLogin(),
                UiSpacer.verticalSpace(space: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
