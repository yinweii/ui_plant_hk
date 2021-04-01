import 'package:flutter/material.dart';
import 'package:plantshop/page/shopping_page.dart';
import 'menu_item_widget.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFa7bfb3).withOpacity(0.8),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(children: [
        SizedBox(height: 50),
        Row(children: [
          CircleAvatar(
            child: Image.asset(
              'assets/images/avt.jpg',
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Text(
              'htphong',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ]),
        SizedBox(height: 30),
        MenuItem(title: 'Home', icon: Icons.home),
        MenuItem(title: 'My Account', icon: Icons.person),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ShoppingCard(),
            ),
          ),
          child: MenuItem(title: 'My Orders', icon: Icons.history),
        ),
        MenuItem(title: 'Wishlist', icon: Icons.list),
        MenuItem(
          title: 'Settings',
          icon: Icons.settings,
        ),
        MenuItem(title: 'Logout', icon: Icons.exit_to_app)
      ]),
    );
  }
}
