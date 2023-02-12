import 'package:coffee_ui_app/constants/my_color.dart';
import 'package:coffee_ui_app/constants/widgets/icon.dart';
import 'package:coffee_ui_app/gen/assets.gen.dart';
import 'package:coffee_ui_app/view/home_screen/coffee_type_list_widget.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int selectedTabIndex = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    const double bodyMargin = 25;
    return Scaffold(
      backgroundColor: SolidColor.backgroundColor,
      bottomNavigationBar: bottomNavigationBar(),
      body: ListView.builder(
          itemCount: 5,
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
              case 4:
                return Padding(
                  padding:
                      const EdgeInsets.fromLTRB(bodyMargin, 32, bodyMargin, 44),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sepecial for you',
                        style: themeData.textTheme.subtitle2!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      articleItem(themeData, '5 Coffee Beans You Must Try!',
                          Assets.images.article.article1),
                      const SizedBox(
                        height: 16,
                      ),
                      articleItem(
                          themeData,
                          'That Morning Cup of Coffee May Extend Your Life',
                          Assets.images.article.article4)
                    ],
                  ),
                );
              default:
                return Container();
            }
          }),
    );
  }

  Container articleItem(
      ThemeData themeData, String title, AssetGenImage articleImage) {
    return Container(
      height: 170,
      decoration: BoxDecoration(
          border: Border.all(width: 0.3),
          gradient: const LinearGradient(
              colors: GradientColor.iconGradient,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
          borderRadius: BorderRadius.circular(26)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 16,
          ),
          SizedBox(
            height: 140,
            width: 140,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: articleImage.image(fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  title,
                  style: themeData.textTheme.subtitle2,
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Read This Article',
                      style: TextStyle(color: SolidColor.secondaryTextColor),
                    ),
                    Assets.icons.favorite
                        .image(scale: 20, color: SolidColor.secondaryTextColor),
                    const Icon(
                      Icons.share,
                      color: SolidColor.secondaryTextColor,
                    )
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }

  Widget bottomNavigationBar() {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: SolidColor.backgroundColor,
        elevation: 0,
        currentIndex: selectedTabIndex,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: (value) {
          setState(() {
            selectedTabIndex = value;
          });
        },
        items: [
          bottomNavigationBarItem(Assets.icons.home, selectedTabIndex == 0),
          bottomNavigationBarItem(Assets.icons.bag, selectedTabIndex == 1),
          bottomNavigationBarItem(Assets.icons.favorite, selectedTabIndex == 2),
          bottomNavigationBarItem(
              Assets.icons.notification, selectedTabIndex == 3),
        ]);
  }

  BottomNavigationBarItem bottomNavigationBarItem(
      AssetGenImage iconName, bool isActive) {
    return BottomNavigationBarItem(
        icon: Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: iconName.image(
              scale: 20,
              color: isActive
                  ? SolidColor.primaryColor
                  : SolidColor.secondaryTextColor),
        ),
        label: '');
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
