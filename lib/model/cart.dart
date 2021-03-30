import 'package:plantshop/model/plan.dart';

class Cart {
  final Plant plant;
  final int count;

  Cart({this.plant, this.count});
}

List<Cart> listcarts = [
  Cart(plant: listPlants[0], count: 1),
  Cart(plant: listPlants[1], count: 2),
  Cart(plant: listPlants[2], count: 3),
  Cart(plant: listPlants[4], count: 1),
];
