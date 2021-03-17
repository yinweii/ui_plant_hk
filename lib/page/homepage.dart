import 'package:flutter/material.dart';
import 'package:plantshop/uitl/global.dart';
import 'package:plantshop/widget/popular_widget.dart';
import 'package:plantshop/widget/select_category.dart';
import 'package:plantshop/widget/treaing_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // it will return the size of the screen
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0.0,
        leading: Icon(
          Icons.menu_rounded,
          color: black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: appPadding),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: black,
            ),
          )
        ],
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Padding(
          padding: EdgeInsets.only(left: appPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Plants Shop',
                style: TextStyle(
                    color: black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Volkhov'),
              ),
              SelectCategory(),
              RecomendsPlants(),
              Treaningplane(),
            ],
          ),
        ),
      ),
    );
  }
}
