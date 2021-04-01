import 'package:flutter/material.dart';
import 'package:plantshop/utils/global.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const MenuItem({Key key, this.title, this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: GestureDetector(
        child: Row(
          children: [
            Icon(
              icon,
              color: kmeloncolor,
              size: 30,
            ),
            SizedBox(width: 20),
            Expanded(
                child: Text(
              title,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ))
          ],
        ),
      ),
    );
  }
}
