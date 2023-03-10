import 'package:coffee_ui_app/gen/assets.gen.dart';
import 'package:coffee_ui_app/models/coffee_type_item_model.dart';
import 'package:coffee_ui_app/models/coffee_item_model.dart';
import 'package:flutter/cupertino.dart';

// coffee type fake data
List<CoffeeTypeModel> coffeeTypeList = [
  CoffeeTypeModel(
      coffeeTypeName: 'Cappuccino', coffeeType: CoffeeType.cappuccino),
  CoffeeTypeModel(coffeeTypeName: 'Latte', coffeeType: CoffeeType.latte),
  CoffeeTypeModel(
      coffeeTypeName: 'Americano', coffeeType: CoffeeType.americano),
  CoffeeTypeModel(coffeeTypeName: 'Espresso', coffeeType: CoffeeType.espresso),
  CoffeeTypeModel(coffeeTypeName: 'Mocha', coffeeType: CoffeeType.mocha),
];

// coffee item fake data

List<CoffeeItemModel> coffeeList = [
  CoffeeItemModel('3.494',
      coffeeType: CoffeeType.cappuccino,
      description: 'With Oat Milk',
      price: '4.20',
      star: '4.5',
      image: Assets.images.coffee.cappuccino5.image(fit: BoxFit.cover)),
  CoffeeItemModel('2.578',
      coffeeType: CoffeeType.cappuccino,
      description: 'With Chocolate',
      price: '3.14',
      star: '4.2',
      image: Assets.images.coffee.cappuccino3.image(fit: BoxFit.cover)),
  CoffeeItemModel('23.495',
      coffeeType: CoffeeType.cappuccino,
      description: 'Normal',
      price: '3.00',
      star: '3.5',
      image: Assets.images.coffee.cappuccino4.image(fit: BoxFit.cover)),
  CoffeeItemModel('3.399',
      coffeeType: CoffeeType.latte,
      description: 'With Oat Milk',
      price: '5.20',
      star: '5',
      image: Assets.images.coffee.latte1.image(fit: BoxFit.cover)),
  CoffeeItemModel('2.404',
      coffeeType: CoffeeType.latte,
      description: 'Normal',
      price: '4.20',
      star: '3.1',
      image: Assets.images.coffee.latte2.image(fit: BoxFit.cover)),
  CoffeeItemModel('49.393',
      coffeeType: CoffeeType.latte,
      description: 'With Sirope',
      price: '6.00',
      star: '4.7',
      image: Assets.images.coffee.latte3.image(fit: BoxFit.cover)),
];
