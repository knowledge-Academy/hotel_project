import 'package:flutter/material.dart';
import 'package:hotel_project/utils/dimensions.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          BigText(text: 'About Us',color: AppColor.textColor,size: Dimension.width44 ,),
          SizedBox(height: Dimension.height25,),
          Container(
            child: Column(
              children: [
                SmallText(text: 'The way we travel and move has changed in the last few years. We no longer want the typical photo that all our contacts post on Instagram.'),
                SmallText(text: 'We no longer want to elbow our way through crowded museums. We no longer want to view the city through the mobile lens.'),
                SizedBox(height: Dimension.height25,),
                SmallText(text: 'It’s not about travelling, it’s about discovering. Travellers are the 21st century pilgrims who seek the basic, long-lasting and human essence.'),
                SmallText(text: 'The city is a canvas of emotions and experiences and culture is the invisible architecture that frames it.'),
                SizedBox(height: Dimension.height25,),
                SmallText(text: 'Only YOU designs a new way of travelling inspired by the local and human connection where each hotel turns into a reflection of its environment.'),
                SmallText(text: 'Dear travellers: you’ve reached your destination.')
              ],
            ),
          ),
        ],),
    );
  }
}
