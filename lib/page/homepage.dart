import 'package:flutter/material.dart';
import 'package:plantshop/page/shopping_page.dart';
import 'package:plantshop/uitl/global.dart';
import 'package:plantshop/widget/drawer_widget.dart';
import 'package:plantshop/widget/popular_widget.dart';
import 'package:plantshop/widget/select_category.dart';
import 'package:plantshop/widget/treaing_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // it will return the size of the screen
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0.0,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Builder(
            builder: (context) => IconButton(
              icon: SvgPicture.asset(
                "assets/images/menudr.svg",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: appPadding),
            child: IconButton(
              icon: Icon(Icons.shopping_cart_outlined),
              color: lightGreen,
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShoppingCard()),
              ),
            ),
          )
        ],
      ),
      drawer: Container(
        width: MediaQuery.of(context).size.width / 1.25,
        child: Drawer(
          child: MyDrawer(),
        ),
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
                    color: kPrimaryColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Volkhov'),
              ),
              SelectCategory(),
              RecomendsPlants(),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Trending',
                  style: TextStyle(
                      color: lightGreen,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Volkhov'),
                ),
              ),
              Treaningplane(),
            ],
          ),
        ),
      ),
    );
  }
}
