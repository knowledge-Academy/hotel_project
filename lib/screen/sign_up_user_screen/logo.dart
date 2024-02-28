import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hotel_project/utils/dimensions.dart';
import 'package:hotel_project/widgets/big_text.dart';

class LogoHotel extends StatelessWidget {
  const LogoHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Dimension.height16,left: Dimension.width16),
      child: Row(children: [
        Image(image: AssetImage('assets/images/logo_icon.png'),height: 32,width: 32,),
        SizedBox(width: Dimension.width12,),
        BigText(text: 'Booking Hotel', color: Colors.blue)
      ],),
    );
  }
}
