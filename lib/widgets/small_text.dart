import 'package:flutter/material.dart';
import 'package:hotel_project/utils/dimensions.dart';

class SmallText extends StatelessWidget {
  final String text;
  double size;
  Color? color;
  FontWeight? fontWeight;
  SmallText({
    super.key,
    required this.text,
    this.color = const Color(0xFFccc7c5),
    this.size = 16,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size,color: color , fontWeight: fontWeight),
    );
  }
}
