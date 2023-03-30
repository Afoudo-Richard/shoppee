import 'package:shoppee/shoppee.dart';
import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF010035);
const Color secondaryColor = Color(0xFFFF6E4E);
const Color contentBackgroundColor = Color(0XFFE5E5E5);
const Color allGameCardColor = Color.fromRGBO(230, 230, 230, 1);

const double paddingSize = 13;

const EdgeInsets pagePadding =
    EdgeInsets.symmetric(horizontal: paddingSize, vertical: 0);

Size deviceSize(context) => MediaQuery.of(context).size;
double deviceHeight(context) => MediaQuery.of(context).size.height;
double deviceWidth(context) => MediaQuery.of(context).size.width;

/// input background color
Color inputBackgroundColor = Colors.grey.withOpacity(0.1);

TextStyle inputLabelTextStyle = TextStyle(
  fontSize: 12.sp,
  fontWeight: FontWeight.w400,
  color: primaryColor,
);
