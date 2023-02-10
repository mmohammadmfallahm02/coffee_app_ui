import 'package:coffee_ui_app/constants/my_color.dart';
import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final Widget? child;
  const IconWidget({
    Key? key,  this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: SolidColor.backgroundColor,
            )
          ],
          gradient: const LinearGradient(
              colors: GradientColor.iconGradient,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(18)),
      child: child,
    );
  }
}
