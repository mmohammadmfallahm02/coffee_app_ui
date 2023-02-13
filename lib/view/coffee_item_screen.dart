import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:coffee_ui_app/constants/my_color.dart';
import 'package:coffee_ui_app/constants/widgets/icon.dart';
import 'package:coffee_ui_app/gen/assets.gen.dart';
import 'package:coffee_ui_app/models/coffee_item_model.dart';
import 'package:coffee_ui_app/view/home_screen/coffee_type_list_widget.dart';
import 'package:coffee_ui_app/view/home_screen/home_sreen.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class CoffeeItemScreen extends StatelessWidget {
  final CoffeeItemModel coffee;
  final double bodyMargin;
  const CoffeeItemScreen(
      {super.key, required this.coffee, required this.bodyMargin});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      backgroundColor: SolidColor.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.6,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(32),
                          child: coffee.image)),
                  // appbar
                  Positioned(
                      child: appBar(
                    context,
                    bodyMargin,
                  )),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: coffeeItemInfo(context, themeData))
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.fromLTRB(bodyMargin, 20, bodyMargin, 32),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Description', style: themeData.textTheme.bodyText2),
                  const SizedBox(
                height: 14,
              ),
              ReadMoreText(
                'The cappuccino is a balanced coffee that’s a true test of any barista’s skills. Known for the even distribution of coffee and milk and served in a large cup with a dusting of chocolate on top, a cappuccino is one of the most popular coffee types in the UK, seconded only to the latte. If you’re a true frothy coffee lover you may be wondering what is a cappuccino and where it comes from. Keep reading to find out all you need to know…',
                // trimLines: 1,
                trimLength: 90,
                style: themeData.textTheme.bodyText2!.copyWith(height: 1.6),
                colorClickableText: SolidColor.primaryColor,
                trimCollapsedText: 'Read More',
                trimExpandedText: 'Close',
              )
                ],
              ),
            ),
            
          ]),
        ),
      ),
    );
  }

  Widget coffeeItemInfo(BuildContext context, ThemeData themeData) {
    return BlurryContainer(
      height: MediaQuery.of(context).size.height * 0.2,
      width: double.infinity,
      borderRadius: BorderRadius.circular(32),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Assets.icons.star.image(
                      scale: 30,
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
                          fontSize: 10, fontWeight: FontWeight.w100),
                    ),
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

  Widget coffeeInfoRectangleWidget(
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

  Widget appBar(BuildContext context, double bodyMagin) => Padding(
      padding: EdgeInsets.fromLTRB(bodyMagin, 25, bodyMagin, 0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
          child: IconWidget(
            child: Assets.icons.back
                .image(scale: 20, color: SolidColor.secondaryTextColor),
          ),
        ),
        IconWidget(
          child: Assets.icons.favorite
              .image(scale: 20, color: SolidColor.secondaryTextColor),
        ),
      ]));
}
