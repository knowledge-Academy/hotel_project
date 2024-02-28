import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';

class FooterHomeScreen extends StatelessWidget {
  const FooterHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColor.containerColor,borderRadius: BorderRadius.circular(12)),
      width: double.infinity,

      padding: EdgeInsets.symmetric(horizontal: Dimension.width150,vertical: Dimension.height60),
      child: Column(
        children: [
          BigText(text: 'Booking Hotels',size: Dimension.width44,color: AppColor.whiteColor,fontWeight: FontWeight.bold,),
          SizedBox(height: Dimension.height50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SmallText(text: 'About',fontWeight:FontWeight.bold,color: AppColor.whiteColor,),
                  SizedBox(height: Dimension.width24,),
                  SmallText(text: 'About Us',color: AppColor.textColor,),
                  SizedBox(height: Dimension.height12,),
                  SmallText(text: 'Careers',color: AppColor.textColor,),
                  SizedBox(height: Dimension.height12,),
                  SmallText(text: 'Contact Us',color: AppColor.textColor,),
                  SizedBox(height: Dimension.height12,),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SmallText(text: 'Reservations',fontWeight:FontWeight.bold,color: AppColor.whiteColor,),
                  SizedBox(height: Dimension.height24,),
                  SmallText(text: 'Request an invoice',color: AppColor.textColor,),
                  SizedBox(height: Dimension.height12,),
                  SmallText(text: 'Find a reservation',color: AppColor.textColor,),
                  SizedBox(height: Dimension.height12,),
                  SmallText(text: 'Email Preferences',color: AppColor.textColor,),
                  SizedBox(height: Dimension.height12,),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SmallText(text: 'News',fontWeight:FontWeight.bold,color: AppColor.whiteColor,),
                  SizedBox(height: Dimension.height24,),
                  SmallText(text: 'Press Room',color: AppColor.textColor,),
                  SizedBox(height: Dimension.height12,),
                  SmallText(text: 'New Openings',color: AppColor.textColor,),
                  SizedBox(height: Dimension.height12,),
                  SmallText(text: 'Magazine',color: AppColor.textColor,),
                  SizedBox(height: Dimension.height12,),
                  SmallText(text: 'Newsletter',color: AppColor.textColor,),
                  SizedBox(height: Dimension.height12,),
                ],
              ),
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: Dimension.width100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage('assets/images/icon_twitter.png'),width: 20,height: 20,),
                  Image(image: AssetImage('assets/images/icon_instagram.png'),width: 20,height: 20,),
                  Image(image: AssetImage('assets/images/icon_facebook.png'),width: 20,height: 20,),
                  Image(image: AssetImage('assets/images/icon_youtube.png'),width: 20,height: 20,),
                ],
              ),
            ),
          ),
          SizedBox(height: Dimension.height12,),
          Container(color: AppColor.whiteColor,child: SizedBox(width: double.infinity,height: 1,)),
          SizedBox(height: Dimension.height12,),
          Row(
            children: [
              SmallText(text: 'Legal Notice'),
              SizedBox(width: Dimension.height12,),
              SmallText(text: 'Privacy Policy'),
              SizedBox(width: Dimension.height12,),
              SmallText(text: 'Cookie Preferences'),
              SizedBox(width: Dimension.height12,),
              SmallText(text: 'Cookie Accessability Policy'),
            ],
          ),
          SizedBox(height: Dimension.height12,),
          Align(alignment: Alignment.topLeft,child: SmallText(text: 'Riverside Hotel 1997 -2002. All Rights Reserved.',color: AppColor.textColor,size: 8,)),
        ],
      ),
    );
  }
}
