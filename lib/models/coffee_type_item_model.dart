enum CoffeeType { latte, cappuccino, americano, espresso, mocha }

class CoffeeTypeModel {
  final String coffeeName;

  final CoffeeType coffeeType;

  CoffeeTypeModel({
    required this.coffeeName,
    required this.coffeeType,
  });
}
