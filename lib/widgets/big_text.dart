import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  double size;
  Color? color;
  FontWeight fontWeight;
  BigText({
    super.key,
    required this.text,
    this.color = const Color(0xff000000),
    this.size = 24,
    this.fontWeight = FontWeight.bold
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size,color: color,fontWeight: FontWeight.bold,),
    );
  }
}
