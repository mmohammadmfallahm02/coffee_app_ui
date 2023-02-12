enum CoffeeType { latte, cappuccino, americano, espresso, mocha }

class CoffeeTypeModel {
  final String coffeeTypeName;
  final CoffeeType coffeeType;

  CoffeeTypeModel({
    required this.coffeeTypeName,
    required this.coffeeType,
  });
}
