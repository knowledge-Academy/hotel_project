import 'package:flutter/material.dart';

import 'small_text.dart';

class ButtonTemplate extends StatelessWidget {

  final String? text;
  double? containerWidth;
  double? containerHeight;
  double? textSize;
  Alignment? alignment;
  Color backgroundColor;
  Color textColor;

   ButtonTemplate({
     super.key,
     this.text,
     this.containerWidth= 125,
     this.containerHeight = 30,
     this.alignment = Alignment.center,
     this.textColor = const Color(0xffFFFFFF),
     this.backgroundColor = const Color(0xff076BB2),
     this.textSize = 16
   });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: backgroundColor,borderRadius: BorderRadius.circular(12)),
      alignment: Alignment.center,
      width: containerWidth,
      height: containerHeight,
      child: SmallText(
        text: text!,
        color: textColor,
      ),
    );
  }
}
