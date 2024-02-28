import 'package:flutter/material.dart';

class IconTemplate extends StatelessWidget {

 final IconData iconData;
  Color iconColor;
  double iconSize;

    IconTemplate({
    super.key,
    required this.iconData,
    this.iconColor = const Color(0xFF000000),
    this.iconSize = 24,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(iconData,size: iconSize,color: iconColor,);
  }
}
