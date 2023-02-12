import 'package:coffee_ui_app/constants/my_color.dart';
import 'package:coffee_ui_app/gen/assets.gen.dart';
import 'package:coffee_ui_app/models/coffee_type_item_model.dart';
import 'package:coffee_ui_app/models/coffee_type_product_model.dart';
import 'package:coffee_ui_app/models/fake_data.dart';
import 'package:flutter/material.dart';

class CoffeeTypeListWidget extends StatefulWidget {
  final double bodyMargin;

  const CoffeeTypeListWidget({super.key, required this.bodyMargin});

  @override
  State<CoffeeTypeListWidget> createState() => _CoffeeTypeListWidgetState();
}

CoffeeType selectedCoffeeType = CoffeeType.cappuccino;

class _CoffeeTypeListWidgetState extends State<CoffeeTypeListWidget> {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Column(
      children: [
        coffeeTypeNameList(themeData),
        coffeeTypeListProduct(themeData)
      ],
    );
  }

  SizedBox coffeeTypeListProduct(ThemeData themeData) {
    return SizedBox(
      height: 270,
      child: ListView.builder(
          itemCount: coffeeList
              .where((element) => element.coffeeType == selectedCoffeeType)
              .length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final coffee = coffeeList
                .where((element) => element.coffeeType == selectedCoffeeType)
                .toList()[index];
            return Padding(
              padding: EdgeInsets.fromLTRB(
                  index == 0 ? 30 : widget.bodyMargin, 0, 4, 0),
              child: Container(
                height: 270,
                width: 170,
                decoration: BoxDecoration(
                    border: Border.all(width: 0.2),
                    borderRadius: BorderRadius.circular(24),
                    gradient: const LinearGradient(
                        colors: GradientColor.iconGradient,
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        coffeeTypeListProductImage(coffee),
                        coffeeTypeListProductInformation(themeData, coffee)
                      ]),
                ),
              ),
            );
          }),
    );
  }

  Padding coffeeTypeListProductInformation(
      ThemeData themeData, CoffeeProductModel coffee) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, right: 4, top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cappuccino',
            style: themeData.textTheme.subtitle2,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            coffee.description,
            style: themeData.textTheme.caption,
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Assets.icons.dollar
                      .image(scale: 30, color: SolidColor.primaryColor),
                  Text(coffee.price, style: themeData.textTheme.subtitle2)
                ],
              ),
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    color: SolidColor.primaryColor,
                    borderRadius: BorderRadius.circular(14)),
                child: Assets.icons.add.image(scale: 45, color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget coffeeTypeListProductImage(CoffeeProductModel coffee) {
    return Stack(
      children: [
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                boxShadow: [
                  BoxShadow(
                      color: SolidColor.secondaryTextColor.withOpacity(0.3),
                      blurRadius: 20)
                ]),
            width: 160,
            height: 150,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(22), child: coffee.image)),
        Positioned(
            top: 0,
            right: 0,
            child: Container(
              width: 55,
              height: 20,
              decoration: BoxDecoration(
                  color: SolidColor.backgroundColor.withOpacity(0.5),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(22),
                      bottomLeft: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Assets.icons.star
                          .image(color: SolidColor.primaryColor, scale: 50),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        coffee.star,
                        style: const TextStyle(
                            fontSize: 9, color: SolidColor.primaryTextColor),
                      )
                    ]),
              ),
            ))
      ],
    );
  }

  SizedBox coffeeTypeNameList(ThemeData themeData) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          itemCount: coffeeTypeList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final coffeeTypeItem = coffeeTypeList[index];
            return Padding(
                padding: EdgeInsets.fromLTRB(widget.bodyMargin, 50, 8, 0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCoffeeType = coffeeTypeItem.coffeeType;
                    });
                  },
                  child: Column(
                    children: [
                      Text(
                        coffeeTypeItem.coffeeTypeName,
                        style: coffeeTypeItem.coffeeType == selectedCoffeeType
                            ? themeData.textTheme.subtitle1!
                                .apply(color: SolidColor.primaryColor)
                            : themeData.textTheme.subtitle1,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      coffeeTypeItem.coffeeType == selectedCoffeeType
                          ? Container(
                              width: 8,
                              height: 8,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: SolidColor.primaryColor),
                            )
                          : const SizedBox()
                    ],
                  ),
                ));
          }),
    );
  }
}
