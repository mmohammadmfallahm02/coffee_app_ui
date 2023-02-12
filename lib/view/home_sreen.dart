import 'package:coffee_ui_app/constants/my_color.dart';
import 'package:coffee_ui_app/constants/widgets/icon.dart';
import 'package:coffee_ui_app/gen/assets.gen.dart';
import 'package:coffee_ui_app/models/coffee_type_item_model.dart';
import 'package:coffee_ui_app/models/fake_data.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                return const CoffeeTypeListWidget(bodyMargin: bodyMargin);
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
            width: 50,
            height: 50,
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
        SizedBox(
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
                            style:
                                coffeeTypeItem.coffeeType == selectedCoffeeType
                                    ? themeData.textTheme.subtitle1!
                                        .apply(color: SolidColor.primaryColor)
                                    : themeData.textTheme.subtitle1,
                          ),
                          const SizedBox(
                            height: 8,
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
        ),
        SizedBox(
          height: 280,
          child: ListView.builder(
              itemCount: 25,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.fromLTRB(
                        index == 0 ? 30 : widget.bodyMargin, 0, 4, 0),
                    child: Container(
                      height: 280,
                      width: 170,
                      decoration: BoxDecoration(
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
                              Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      boxShadow: [
                                        BoxShadow(
                                            color: SolidColor.secondaryTextColor
                                                .withOpacity(0.3),
                                            blurRadius: 20)
                                      ]),
                                  width: 160,
                                  height: 150,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(22),
                                      child: Assets.images.coffee.cappuccino3
                                          .image(fit: BoxFit.cover))),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 4, right: 4, top: 16),
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
                                      'With Oat Milk',
                                      style: themeData.textTheme.caption,
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Assets.icons.dollar.image(
                                                scale: 30,
                                                color: SolidColor.primaryColor),
                                            Text(
                                              '4.20',
                                              style: themeData
                                                  .textTheme.subtitle2
                                            )
                                          ],
                                        ),
                                        Container(
                                          width: 35,
                                          height: 35,
                                          decoration: BoxDecoration(
                                              color: SolidColor.primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(14)),
                                          child: Assets.icons.add.image(
                                              scale: 45, color: Colors.white),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ]),
                      ),
                    ),
                  )),
        )
      ],
    );
  }
}
