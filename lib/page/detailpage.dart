import 'package:flutter/material.dart';
import 'package:plantshop/uitl/global.dart';
import 'package:plantshop/widget/select_category.dart';
import 'package:plantshop/widget/selectsize_widget.dart';
import 'package:slide_popup_dialog/slide_popup_dialog.dart ' as slideDialog;

class DetailPage extends StatefulWidget {
  final String name;
  final int price;
  final String category;
  final String description;
  final String imageUrl;
  final int height;
  final String huongdan;
  final String trongluong;
  final String quycach;
  final String sd;

  const DetailPage(
      {Key key,
      this.name,
      this.price,
      this.category,
      this.description,
      this.imageUrl,
      this.height,
      this.huongdan,
      this.trongluong,
      this.quycach,
      this.sd})
      : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFf5d5d3).withOpacity(0.95),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Container(
                //color: Color(0xFFd8f8f3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.lightBlue,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.lightBlue,
                      ),
                      onPressed: () {
                        print('Add to card');
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: size.height * 0.48,
              child: Row(
                children: [
                  Container(
                    width: size.width * 0.4,
                    // color: Colors.indigo,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildLable('Tên:', '${widget.name}'),
                          _buildLable('Giá:', '${widget.price} ₫'),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      child: Stack(
                    children: [
                      Container(
                        height: size.height - 20,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('${widget.imageUrl}'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(50),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 1,
                        child: IconButton(
                          onPressed: _dialogInfo,
                          icon: Icon(
                            Icons.info_outline,
                            color: darkGreen,
                          ),
                        ),
                      ),
                    ],
                  ))
                ],
              ),
            ),
            SizedBox(height: 8),
            SelectSize(),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFff7b7b),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '+ADD TO CARD',
                            style: TextStyle(
                                color: white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            offset: Offset(0, 3),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 32,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 30),
                  height: size.height,
                  decoration: BoxDecoration(
                    color: lightGreen,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: Text(
                      '${widget.description}',
                      style: TextStyle(
                          fontSize: 17, color: black.withOpacity(0.8)),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildLable(String lable, String namelable) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, top: 40),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              lable,
              style: TextStyle(
                  color: black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Volkhov'),
            ),
            Text(
              namelable,
              style: TextStyle(
                  color: black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Volkhov'),
            ),
          ],
        ),
      ),
    );
  }

  void _dialogInfo() {
    slideDialog.showSlideDialog(
        context: context,
        barrierColor: Colors.white.withOpacity(0.7),
        pillColor: Colors.red,
        backgroundColor: Color(0xFFf5f5f5),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              children: [
                _buildInfo('Bảo quản:', '${widget.huongdan}'),
                Divider(
                  height: 1,
                  color: kPrimaryColor,
                ),
                _buildInfo('Phù hợp:', '${widget.sd}'),
                Divider(
                  height: 1,
                  color: kPrimaryColor,
                ),
                _buildInfo('Trong lượng:', '${widget.trongluong}'),
                Divider(
                  height: 1,
                  color: kPrimaryColor,
                ),
                _buildInfo('Quy Cách:', '${widget.quycach}'),
              ],
            ),
          ),
        ));
  }

  Widget _buildInfo(String lab, String dis) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, bottom: 10),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Text(
              lab,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          // SizedBox(width: 10),
          Expanded(
            child: Text(
              dis,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
            ),
          ),
        ],
      ),
    );
  }
}
