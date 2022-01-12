import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wowfasnew/config/app_color.dart';
import 'package:wowfasnew/config/app_text_styles.dart';
import 'package:wowfasnew/utils/ui_spacer.dart';
import 'decoration_fields.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  LoginFormState createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailTextEditingController = TextEditingController();
  bool showPassword = true;
  bool _isChecked = false;

  TextEditingController passwordTextEditingController = TextEditingController();

  void _handleRememberme(bool value) {
    print(value);
    _isChecked = value;
    setState(() {
      _isChecked = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          UiSpacer.verticalSpace(space: 10),
          Container(
            decoration: boxFieldDecoration(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Theme(
                data:
                    Theme.of(context).copyWith(primaryColor: AppColor.primary),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  style: AppTextStyle.filedTextStyle(),
                  textInputAction: TextInputAction.done,
                  validator: (val) {
                    return RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(val!)
                        ? null
                        : "Provide a valid email";
                  },
                  controller: emailTextEditingController,
                  cursorColor:AppColor.primary ,
                  decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.email,color: AppColor.primary,),
                      border: InputBorder.none,
                      hintText: "Email",
                      hintStyle: AppTextStyle.hintStyle()),
                ),
              ),
            ),
          ),
          UiSpacer.verticalSpace(space: 10),
          Container(
            decoration: boxFieldDecoration(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Theme(
                data:
                    Theme.of(context).copyWith(primaryColor: AppColor.primary),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  style: AppTextStyle.filedTextStyle(),
                  textInputAction: TextInputAction.go,
                  validator: (val) {
                    return val!.length > 6
                        ? null
                        : "Password should be 6+ chars";
                  },
                  cursorColor:AppColor.primary ,
                  controller: passwordTextEditingController,
                  obscureText: showPassword,
                  decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              showPassword = !showPassword;
                            });
                          },
                          child:  Icon(IconData(62500,
                              fontFamily: CupertinoIcons.iconFont,
                              fontPackage: CupertinoIcons.iconFontPackage),color: AppColor.primary,)),
                      border: InputBorder.none,
                      hintText: "Password",
                      hintStyle: AppTextStyle.hintStyle()),
                ),
              ),
            ),
          ),
          UiSpacer.verticalSpace(space: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(
                    height: 24.0,
                    width: 24.0,
                    child: Theme(
                      data: ThemeData(
                          unselectedWidgetColor: AppColor.primary // Your color
                          ),
                      child: Checkbox(
                          activeColor: AppColor.primaryDark,
                          value: _isChecked,
                          onChanged: (value) => {_handleRememberme(value!)}),
                    )),
                UiSpacer.horizontalSpace(space: 10),
                Text("Remember Me",
                    style: AppTextStyle.h3TitleTextStyle(
                        fontSize: 14, color: AppColor.primary))
              ]),
              Text(
                "Forgot Password?",
                style: AppTextStyle.h3TitleTextStyle(
                    fontSize: 14, color: AppColor.primary),
              ),
            ],
          ),
          UiSpacer.verticalSpace(space: 20),
          InkWell(
            splashColor: Colors.white,
            onTap: () {
              // signIn();
            },
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                color: AppColor.primary,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 18,
                    color: Color(0xff000000).withOpacity(.20),
                    offset: Offset(
                      6,
                      6,
                    ),
                  ),
                  BoxShadow(
                    blurRadius: 18,
                    color: AppColor.primary.withOpacity(.20),
                    offset: Offset(
                      -6,
                      -6,
                    ),
                  ),
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    15,
                  ),
                ),
              ),
              child: const Text(
                "LogIn",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "ProductSans",
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
