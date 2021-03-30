import 'package:flutter/material.dart';
import 'package:plantshop/model/plan.dart';
import 'package:plantshop/page/detailpage.dart';
import 'package:plantshop/uitl/global.dart';

class Treaningplane extends StatefulWidget {
  @override
  _TreaningplaneState createState() => _TreaningplaneState();
}

class _TreaningplaneState extends State<Treaningplane> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listPlants.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(
                  name: listPlants[index].name,
                  price: listPlants[index].price,
                  description: listPlants[index].description,
                  imageUrl: listPlants[index].imageUrl,
                  huongdan: listPlants[index].huongdan,
                  quycach: listPlants[index].quycach,
                  trongluong: listPlants[index].trongluong,
                  sd: listPlants[index].sd,
                ),
              ),
            ),
            child: CardPlant(
              imageUrl: listPlants[index].imageUrl,
              price: listPlants[index].price,
              name: listPlants[index].name,
            ),
          );
        },
      ),
    );
  }
}

class CardPlant extends StatefulWidget {
  final String name;
  final int price;
  final String category;
  final String description;
  final String imageUrl;
  final int height;

  const CardPlant(
      {Key key,
      this.name,
      this.price,
      this.category,
      this.description,
      this.imageUrl,
      this.height})
      : super(key: key);

  @override
  _CardPlantState createState() => _CardPlantState();
}

class _CardPlantState extends State<CardPlant> {
  bool isLike = false;
  _onPress() {
    setState(() {
      isLike = !isLike;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: size.width / 2.5,
        height: 230,
        decoration: BoxDecoration(
          color: lightGreen,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 0, bottom: 0),
          child: Container(
            child: Column(
              children: [
                Stack(
                  children: [
                    Image(
                      height: 188,
                      width: size.width / 2.5,
                      fit: BoxFit.cover,
                      image: AssetImage(
                        '${widget.imageUrl}',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 26,
                        width: 26,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset:
                                  Offset(0, 5), // changes position of shadow
                            ),
                          ],
                        ),
                        child: GestureDetector(
                          onTap: _onPress,
                          child: Icon(
                            isLike ? Icons.favorite : Icons.favorite_border,
                            color: isLike ? Color(0xFFff717b) : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '${widget.name}',
                        style: TextStyle(
                            fontSize: 18,
                            color: white,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${widget.price}',
                            style: TextStyle(
                                fontSize: 15,
                                color: white,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '₫',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFFfe583f),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
