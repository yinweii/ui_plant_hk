import 'package:flutter/material.dart';
import 'package:plantshop/model/cart.dart';
import 'package:plantshop/utils/global.dart';
import 'cart_item_widget.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class BodyCart extends StatefulWidget {
  @override
  _BodyCartState createState() => _BodyCartState();
}

class _BodyCartState extends State<BodyCart> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      itemCount: listcarts.length,
      itemBuilder: (context, index) => Slidable(
        key: Key(listcarts[index].plant.name),
        actionPane: SlidableDrawerActionPane(),
        secondaryActions: [
          IconSlideAction(
            caption: 'Delete',
            color: kmeloncolor,
            icon: Icons.delete,
            onTap: () => setState(() {
              listcarts.removeAt(index);
            }),
          ),
        ],
        child: CartItem(cart: listcarts[index]),
      ),
    );
  }
}
