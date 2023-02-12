import 'package:coffee_ui_app/models/coffee_type_item_model.dart';
import 'package:flutter/cupertino.dart';

class CoffeeProductModel {
  final CoffeeType coffeeType;
  final String description;
  final String price;
  final String star;
  final Widget image;

  CoffeeProductModel(
      {required this.coffeeType,
      required this.description,
      required this.price,
      required this.star,
      required this.image});
}
