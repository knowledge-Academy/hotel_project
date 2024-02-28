import 'package:flutter/material.dart';
import 'package:hotel_project/widgets/big_text.dart';
import 'package:hotel_project/widgets/icon.dart';

import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/small_text.dart';

class PhotoAndContainerHomeScreen extends StatelessWidget {
  PhotoAndContainerHomeScreen({super.key});

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
          image: AssetImage('assets/images/room_photo_one.png')),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BigText(text: 'Our Garden Rooms',color: AppColor.textColor,size: 64,),
          SmallText(text: 'These garden suites are spacious and can accommodate up to 2 adults and 2 children.'
              ' Located on the ground floor these light and airy suites include a private garden which opens out onto the hotel gardens. ',size: 18,)
        ],
      ),
    );
  }


}
