import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wowfasnew/config/app_color.dart';
import 'package:wowfasnew/config/app_text_styles.dart';
import 'package:wowfasnew/pages/login/widgets/decoration_fields.dart';
import 'package:wowfasnew/utils/ui_spacer.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  SignUpFormState createState() => SignUpFormState();
}

class SignUpFormState extends State<SignUpForm> {
  final formKey = GlobalKey<FormState>();
  TextEditingController firstNameTextEditingController =
      TextEditingController();
  TextEditingController lastNameTextEditingController = TextEditingController();
  TextEditingController userNameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController cnfPasswordTextEditingController = TextEditingController();
  bool showPassword = true;
  bool showConfirmPassword = true;
  bool _isChecked = false;

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
                  textInputAction: TextInputAction.next,
                  validator: (val) {
                    return val!.isEmpty ? null : "Provide a valid first name";
                  },
                  controller: firstNameTextEditingController,
                  cursorColor: AppColor.primary,
                  decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.account_circle,
                        color: AppColor.primary,
                      ),
                      border: InputBorder.none,
                      hintText: "First Name",
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
                  textInputAction: TextInputAction.next,
                  validator: (val) {
                    return val!.isEmpty ? null : "Provide a valid last name";
                  },
                  controller: lastNameTextEditingController,
                  cursorColor: AppColor.primary,
                  decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.account_circle,
                        color: AppColor.primary,
                      ),
                      border: InputBorder.none,
                      hintText: "Last Name",
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
                  textInputAction: TextInputAction.next,
                  validator: (val) {
                    return val!.isEmpty ? null : "Provide a valid UserName";
                  },
                  controller: userNameTextEditingController,
                  cursorColor: AppColor.primary,
                  decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.account_circle,
                        color: AppColor.primary,
                      ),
                      border: InputBorder.none,
                      hintText: "User Name",
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
                  textInputAction: TextInputAction.next,
                  validator: (val) {
                    return RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(val!)
                        ? null
                        : "Provide a valid email";
                  },
                  controller: emailTextEditingController,
                  cursorColor: AppColor.primary,
                  decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.email,
                        color: AppColor.primary,
                      ),
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
                  textInputAction: TextInputAction.next,
                  validator: (val) {
                    return val!.length > 6
                        ? null
                        : "Password should be 6+ chars";
                  },
                  cursorColor: AppColor.primary,
                  controller: passwordTextEditingController,
                  obscureText: showPassword,
                  decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              showPassword = !showPassword;
                            });
                          },
                          child: Icon(
                            IconData(62500,
                                fontFamily: CupertinoIcons.iconFont,
                                fontPackage: CupertinoIcons.iconFontPackage),
                            color: AppColor.primary,
                          )),
                      border: InputBorder.none,
                      hintText: "Password",
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
                  textInputAction: TextInputAction.done,
                  validator: (val) {
                    if (val! != passwordTextEditingController.text.toString()) {
                      return "Password doesn't match";
                    }
                    return null;
                  },
                  cursorColor: AppColor.primary,
                  controller: cnfPasswordTextEditingController,
                  obscureText: showConfirmPassword,
                  decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              showConfirmPassword = !showConfirmPassword;
                            });
                          },
                          child: Icon(
                            IconData(62500,
                                fontFamily: CupertinoIcons.iconFont,
                                fontPackage: CupertinoIcons.iconFontPackage),
                            color: AppColor.primary,
                          )),
                      border: InputBorder.none,
                      hintText: "Confirm Password",
                      hintStyle: AppTextStyle.hintStyle()),
                ),
              ),
            ),
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
                "Sign Up",
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
