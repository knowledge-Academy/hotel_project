import 'package:flutter/material.dart';
import 'package:hotel_project/utils/dimensions.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';

class OurCuisine extends StatelessWidget {
  const OurCuisine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          BigText(text: 'Our Cuisine',color: AppColor.textColor,size: Dimension.width44,),
          SizedBox(height: Dimension.height25,),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image(
                  height: Dimension.height600,
                  width: Dimension.width820,
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/home_our_cuisine_photo.png'),
                ),
              ),
              SizedBox(width: Dimension.width75,),
              Container(
                width: Dimension.width450,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SmallText(text: 'Gastronomy',color: AppColor.blackColor,size: Dimension.width30,),
                    SizedBox(height: Dimension.height35,),
                    SmallText(size: Dimension.width16,text: 'The way we travel and move has changed in the last few years.'
                        ' We no longer want the typical photo that all our contacts post on Instagram.'
                        ' We no longer want to elbow our way through crowded museums.'
                        ' We no longer want to view the city through the mobile lens.'
                        'It\’s not about travelling, it’s about discovering.'
                        'Travellers are the 21st century pilgrims who seek the basic, long-lasting and human essence.'
                        'The city is a canvas of emotions and experiences and culture is the invisible architecture that frames it.'
                    ),
                    SizedBox(height: Dimension.height35,),
                    SmallText(text: 'Explore more',color: AppColor.mainColor,size: Dimension.width12,)
                  ],
                ),
              ),

            ],),
        ],
      ),
    );
  }
}
