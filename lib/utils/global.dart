import 'package:flutter/material.dart';

//colors used in this app
const Color white = Colors.white;
const Color black = Colors.black;
const Color grey = Colors.grey;
const Color darkGreen = Color(0xFF004D40);
const Color green = Colors.teal;
const Color lightGreen = Color(0xFF80CBC4);

//default app padding
const double appPadding = 20.0;
const kTextColor = Color(0xFF3C4046);
const kBackgroundColor = Color(0xFFF9F8FD);
const kmeloncolor = Color(0xFFff7b7b);

const double kDefaultPadding = 15.0;
const kPrimaryColor = Color(0xFF0C9869);

final kHintTextStyle = TextStyle(
  color: Colors.white,
);

final kLabelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

final kBoxDecorationStyle = BoxDecoration(
  color: kmeloncolor,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.grey[350],
      blurRadius: 5,
      offset: Offset(0, 4),
    ),
  ],
);
