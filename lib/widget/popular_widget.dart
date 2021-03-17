import 'package:flutter/material.dart';
import 'package:plantshop/data/data.dart';
import 'package:plantshop/model/plan.dart';
import 'package:plantshop/uitl/global.dart';

class RecomendsPlants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listPlants.length,
        itemBuilder: (context, index) {
          return RecomendPlantCard(
            imageUrl: listPlants[index].imageUrl,
            name: listPlants[index].name,
            price: listPlants[index].price,
            height: listPlants[index].height,
          );
        },
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  final String name;
  final int price;
  final String category;
  final String description;
  final String imageUrl;
  final int height;

  const RecomendPlantCard(
      {Key key,
      this.name,
      this.price,
      this.category,
      this.description,
      this.imageUrl,
      this.height})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(imageUrl),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$name\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: '${height}cm',
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '${price}k',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
