import 'package:coffee_ui_app/constants/my_color.dart';
import 'package:coffee_ui_app/constants/widgets/icon.dart';
import 'package:coffee_ui_app/gen/assets.gen.dart';
import 'package:coffee_ui_app/models/coffee_type_product_model.dart';
import 'package:coffee_ui_app/view/home_screen/coffee_type_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class ProductScreen extends StatelessWidget {
  final CoffeeProductModel coffee;
  final double bodyMargin;
  const ProductScreen(
      {super.key, required this.coffee, required this.bodyMargin});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      backgroundColor: SolidColor.backgroundColor,
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Stack(
              children: [
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(26),
                        child: coffee.image)),
                // appbar
                Positioned(child: appBar(bodyMargin)),
                Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: coffeeItemInfo(context, themeData))
              ],
            ),
          )
        ]),
      ),
    );
  }

  Container coffeeItemInfo(BuildContext context, ThemeData themeData) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.18,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
          color: SolidColor.backgroundColor.withOpacity(0.7)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coffeeTypeMap[coffee.coffeeType]!,
                  style: themeData.textTheme.headline4,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  coffee.description,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w100),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Assets.icons.star.image(
                      scale: 20,
                      color: SolidColor.primaryColor,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      coffee.star,
                      style: const TextStyle(fontSize: 18),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      '(${coffee.rateNumber})',
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w100),
                    )
                  ],
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  coffeeInfoRectangleWidget(
                      themeData, 'Coffee', Assets.icons.coffeeBeans),
                  const SizedBox(
                    width: 8,
                  ),
                  coffeeInfoRectangleWidget(
                      themeData, 'Milk', Assets.icons.drop)
                ],
              ),
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 130,
                decoration: BoxDecoration(
                    color: SolidColor.secondaryColor,
                    borderRadius: BorderRadius.circular(12)),
                child: Text(
                  'Medium Roasted',
                  style: themeData.textTheme.caption,
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }

  Container coffeeInfoRectangleWidget(
      ThemeData themeData, String title, AssetGenImage iconName) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          color: SolidColor.secondaryColor,
          borderRadius: BorderRadius.circular(18)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconName.image(scale: 25, color: SolidColor.primaryColor),
          const SizedBox(
            height: 2,
          ),
          Text(
            title,
            style: themeData.textTheme.caption,
          )
        ],
      ),
    );
  }

  Widget appBar(double bodyMagin) => Padding(
      padding: EdgeInsets.fromLTRB(bodyMagin, 25, bodyMagin, 0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconWidget(
          child: Assets.icons.back
              .image(scale: 20, color: SolidColor.secondaryTextColor),
        ),
        IconWidget(
          child: Assets.icons.favorite
              .image(scale: 20, color: SolidColor.secondaryTextColor),
        ),
      ]));
}
