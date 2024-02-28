import 'package:flutter/material.dart';
import 'package:hotel_project/widgets/big_text.dart';
import 'package:hotel_project/widgets/icon.dart';

import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/small_text.dart';

class PhotoAndContainerAboutUsScreen extends StatelessWidget {
  PhotoAndContainerAboutUsScreen({super.key});

  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        mainImageOfHomeScreen(),
        containerOfTextOfHomeScreen(),
      ],
    );
  }
  Widget mainImageOfHomeScreen()
  {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image(
          height: Dimension.height900,
          width: double.infinity,
          fit: BoxFit.fill,
          image: AssetImage('assets/images/about_us_photo.png')),
    );
  }
  Widget containerOfTextOfHomeScreen()
  {
    return Container(
      decoration: BoxDecoration(color: AppColor.whiteColor,borderRadius: BorderRadius.circular(16)),
      margin: EdgeInsets.only(left: 75,bottom: 47),
      padding: EdgeInsets.all(20),
      width: 710,
      height: 215,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BigText(text: 'RIVERSIDE HOTEL \nNEXT TO IMEROVIGLI RIVER',color: AppColor.textColor,size: 50,),
        ],
      ),
    );
  }


}
