import 'package:flutter/material.dart';
import 'package:plantshop/uitl/global.dart';

class CustomTextField extends StatelessWidget {
  final String lable;
  final Icon preicon;
  final IconButton suficon;
  final String hintext;
  final bool obstype;

  const CustomTextField({
    Key key,
    this.lable,
    this.preicon,
    this.suficon,
    this.hintext,
    this.obstype,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          lable,
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            obscureText: obstype,
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: preicon,
              suffixIcon: suficon,
              hintText: hintext,
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}
