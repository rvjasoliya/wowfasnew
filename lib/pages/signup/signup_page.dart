import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wowfasnew/config/app_color.dart';
import 'package:wowfasnew/config/app_text_styles.dart';
import 'package:wowfasnew/pages/login/login_page.dart';
import 'package:wowfasnew/pages/login/widgets/image_header.dart';
import 'package:wowfasnew/pages/signup/widget/signup_form.dart';
import 'package:wowfasnew/routes/app_routes.dart';
import 'package:wowfasnew/utils/ui_spacer.dart';

class SignUpScreen extends StatefulWidget {
  @override
  SignUpScreenState createState() => SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen> {
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
                UiSpacer.verticalSpace(space: 30),

                Container(
                  height: MediaQuery.of(context).size.height / 7,
                  child: ImageHeader(),
                ),
                SignUpForm(),
                UiSpacer.verticalSpace(space: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style:AppTextStyle.h3TitleTextStyle(fontSize: 14,color: AppColor.primary) /*TextStyle(
                        fontFamily: "ProductSans",
                        color: Color(0xFF363B64),
                        fontSize: 14,
                      )*/,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute<void>(builder: (BuildContext context) => LoginScreen()),
                          ModalRoute.withName(AppRoutes.signupRoute),
                        );
                      },
                      child: Text("LogIn.",
                          style: AppTextStyle.h3TitleTextStyle(fontSize: 14,color: AppColor.primaryDark,fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
                UiSpacer.verticalSpace(),/*
                DividerSocialLogin(),
                UiSpacer.verticalSpace(),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
