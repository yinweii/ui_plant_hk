import 'package:flutter/material.dart';
import 'package:plantshop/model/cart.dart';
import 'package:plantshop/utils/global.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    Key key,
    this.cart,
  }) : super(key: key);
  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            width: 78,
            child: AspectRatio(
              aspectRatio: 0.8,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Image.asset(cart.plant.imageUrl),
              ),
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cart.plant.name,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: darkGreen),
              ),
              Text.rich(
                TextSpan(text: '${cart.plant.price}', children: [
                  TextSpan(
                      text: '  x${cart.count}',
                      style: TextStyle(color: kmeloncolor)),
                ]),
              ),
            ],
          )
        ],
      ),
    );
  }
}
