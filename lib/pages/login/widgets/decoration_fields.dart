import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

BoxDecoration boxFieldDecoration(){
  return BoxDecoration(
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        blurRadius: 18,
        color: Color(0xff000000).withOpacity(.16),
        offset: Offset(
          6,
          6,
        ),
      ),
      BoxShadow(
        blurRadius: 18,
        color: Color(0xffffffff),
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
  );
}