import 'package:coffee_ui_app/constants/my_color.dart';
import 'package:coffee_ui_app/constants/widgets/icon.dart';
import 'package:coffee_ui_app/gen/assets.gen.dart';
import 'package:coffee_ui_app/models/coffee_type_item_model.dart';
import 'package:coffee_ui_app/models/fake_data.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CoffeeType selectedCoffeeType = CoffeeType.cappuccino;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    const double bodyMargin = 25;
    return Scaffold(
      backgroundColor: SolidColor.backgroundColor,
      body: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            switch (index) {
              case 0:
                return appBar(bodyMargin);
              case 1:
                return Padding(
                  padding: const EdgeInsets.only(
                      left: bodyMargin, top: 32, bottom: 32),
                  child: Text(
                    'Find the best\ncoffee for you',
                    style: themeData.textTheme.headline1,
                  ),
                );
              case 2:
                return Padding(
                  padding: const EdgeInsets.only(
                      left: bodyMargin, right: bodyMargin),
                  child: searchBarWidget(themeData),
                );
              case 3:
                return SizedBox(
                  height: 150,
                  child: ListView.builder(
                      itemCount: coffeeTypeList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final coffeeItem = coffeeTypeList[index];
                        return Padding(
                            padding:
                                const EdgeInsets.fromLTRB(bodyMargin, 50, 8, 0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedCoffeeType = coffeeItem.coffeeType;
                                });
                              },
                              child: Column(
                                children: [
                                  Text(
                                    coffeeItem.coffeeName,
                                    style: coffeeItem.coffeeType ==
                                            selectedCoffeeType
                                        ? themeData.textTheme.subtitle1!.apply(
                                            color: SolidColor.primaryColor)
                                        : themeData.textTheme.subtitle1,
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  coffeeItem.coffeeType == selectedCoffeeType
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
              default:
                return Container();
            }
          }),
    );
  }

  Widget searchBarWidget(ThemeData themeData) {
    return TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: SolidColor.secondaryColor,
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(16)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(16)),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 16, right: 8),
              child: Assets.icons.search
                  .image(scale: 20, color: SolidColor.secondaryTextColor),
            ),
            hintText: 'Find Your Cofee ...',
            hintStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                color: SolidColor.secondaryTextColor,
                fontSize: 14)));
  }

  Widget appBar(double bodyMagin) => Padding(
      padding: EdgeInsets.fromLTRB(bodyMagin, 25, bodyMagin, 0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconWidget(
          child: Assets.icons.menu
              .image(scale: 20, color: SolidColor.secondaryTextColor),
        ),
        Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: const GradientBoxBorder(
                  width: 3,
                  gradient: LinearGradient(
                      colors: GradientColor.iconGradient,
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                )),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Assets.images.profilePicture.image(fit: BoxFit.cover),
            ))
      ]));
}
