import 'package:flutter/cupertino.dart';
import 'package:wowfasnew/config/config.dart';

Widget ImageHeader(){
  return Image.asset(
    Config.wowfas_header,
    fit: BoxFit.contain,
    width: 250,
  );
}