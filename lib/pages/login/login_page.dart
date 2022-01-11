import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wowfasnew/config/app_text_styles.dart';
import 'package:wowfasnew/config/config.dart';
import 'package:wowfasnew/pages/login/widgets/decoration_fields.dart';
import 'package:wowfasnew/utils/ui_spacer.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController emailTextEditingController = TextEditingController();
  bool showPassword = true;
  TextEditingController passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 6,
                    child: Image.asset(
                      Config.wowfas_header,
                      fit: BoxFit.contain,
                      width: 250,
                    ),
                  ),
                  UiSpacer.verticalSpace(space: 20),
                  Container(
                    decoration: boxFieldDecoration(),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(primaryColor: Color(0xFF626ABB)),
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.center,
                          style:  AppTextStyle.filedTextStyle(),
                          textInputAction: TextInputAction.done,
                          validator: (val) {
                            return RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(val!)
                                ? null
                                : "Provide a valid email";
                          },
                          controller: emailTextEditingController,
                          decoration:  InputDecoration(
                              suffixIcon: const Icon(Icons.email),
                              border: InputBorder.none,
                              hintText: "Email",
                              hintStyle: AppTextStyle.hintStyle()),
                        ),
                      ),
                    ),
                  ),
                  UiSpacer.verticalSpace(space: 20),

                  Container(
                    decoration: boxFieldDecoration(),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(primaryColor: Color(0xFF626ABB)),
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.center,
                          style: AppTextStyle.filedTextStyle(),
                          textInputAction: TextInputAction.go,
                          validator: (val) {
                            return val!.length > 6
                                ? null
                                : "Password should be 6+ chars";
                          },
                          controller: passwordTextEditingController,
                          obscureText: showPassword,
                          decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      showPassword = !showPassword;
                                    });
                                  },
                                  child: const Icon(IconData(62500,
                                      fontFamily: CupertinoIcons.iconFont,
                                      fontPackage:
                                          CupertinoIcons.iconFontPackage))),
                              border: InputBorder.none,
                              hintText: "Password",
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
                        color: Color(0xFF626ABB),
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
                            color: Color(0xff727bd9).withOpacity(.20),
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
                        "Log In",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "ProductSans",
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  UiSpacer.verticalSpace(space: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don\'t have an account? ",
                        style: TextStyle(
                          fontFamily: "ProductSans",
                          color: Color(0xFF363B64),
                          fontSize: 14,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // widget.toggle();
                        },
                        child: Text("Sign Up.",
                            style: AppTextStyle.filedTextStyle(fontSize: 14)),
                      ),
                    ],
                  ),
                  UiSpacer.verticalSpace()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
