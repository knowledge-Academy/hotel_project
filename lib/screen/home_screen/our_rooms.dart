import 'package:flutter/material.dart';
import 'package:hotel_project/utils/dimensions.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';

class OurRooms extends StatelessWidget {
  const OurRooms({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
      children: [
        BigText(text: 'Our Rooms',color: AppColor.textColor,size: Dimension.width44,),
        SizedBox(height: Dimension.height25,),
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image(
                fit: BoxFit.fill,
                height: Dimension.height600,
                width: Dimension.width820,
                image: AssetImage('assets/images/home_photo_two.png'),
              ),
            ),
            SizedBox(width: Dimension.width75,),
            Container(
              width: Dimension.width450,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SmallText(text: 'Piece of  Mind',color: AppColor.blackColor,size: Dimension.width30,),
                  SizedBox(height: Dimension.height16,),
                  SmallText(size: Dimension.width16,text: 'The way we travel and move has changed in the last few years. We no longer want the typical photo that all our contacts post on Instagram.'
                      ' We no longer want to elbow our way through crowded museums.'
                      ' We no longer want to view the city through the mobile lens.'
                      ' It\'s not about travelling, it\'s about discovering.'),
                  SizedBox(height: Dimension.height25,),
                  Container(
                    margin: EdgeInsets.only(right: Dimension.width50),
                    width: double.infinity,
                    height: Dimension.height35,
                    color: AppColor.mainColor,
                    child: Center(child: SmallText(text: 'Explore our rooms',size: Dimension.width24,color: AppColor.whiteColor,)),
                  )
                ],
              ),
            )
          ],
        ),
      ],
    ),
    );
  }
}
