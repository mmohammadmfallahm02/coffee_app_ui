import 'package:coffee_ui_app/constants/my_color.dart';
import 'package:coffee_ui_app/constants/widgets/icon.dart';
import 'package:coffee_ui_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SolidColor.backgroundColor,
      body: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            switch (index) {
              case 0:
                return appBar();
              default:
                return Container();
            }
          }),
    );
  }

  Widget appBar() => Padding(
      padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconWidget(
          child: Assets.icons.menu
              .image(scale: 20, color: SolidColor.secondaryTextColor),
        ),
        Stack(
          children: [
            const IconWidget(),
            Container(
                padding: const EdgeInsets.all(3),
                width: 50,
                height: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Assets.images.profilePicture.image(fit: BoxFit.cover),
                ))
          ],
        )
      ]));
}
