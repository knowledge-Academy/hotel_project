import 'package:flutter/material.dart';
import 'package:hotel_project/utils/colors.dart';
import 'package:hotel_project/utils/dimensions.dart';
import 'package:hotel_project/widgets/big_text.dart';
import 'package:hotel_project/widgets/small_text.dart';
import 'package:hotel_project/widgets/text_field.dart';

import 'logo.dart';

class LeftPartOfSignUpPage extends StatelessWidget {
  const LeftPartOfSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 735 ,
      child: Column(
        children: [
          LogoHotel(),
          SizedBox(height: 100,),
          Container(
            width: 350,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(text: 'Sign Up',size: 30,),
                SmallText(text: 'Sign up to enjoy the feature of Revolutie',size: Dimension.height16,),
                SizedBox(height: 20,),
                TextFieldTemplate(
                  hint: 'Email',
                  borderRadiusSize: 10,
                  prefixIcon: Icons.email,
                ),
                SizedBox(height: 12,),
                TextFieldTemplate(
                  hint: 'Date',
                  borderRadiusSize: 10,
                  prefixIcon: Icons.date_range,
                ),
                SizedBox(height: 12,),
                TextFieldTemplate(
                  hint: 'Password',
                  borderRadiusSize: 10,
                  prefixIcon: Icons.password,
                  suffixIcon: Icons.remove_red_eye,
                ),
                SizedBox(height: 12,),
                Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                      color: AppColor.mainColor,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: SmallText(text: 'Sign up',color: Colors.white)),
                ),
                SizedBox(height: 12,),
                Center(child: SmallText(text: 'or',color: AppColor.textColor,)),
                SizedBox(height: 12,),
                Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColor.textColor),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SmallText(text: 'Continue with Google',color: AppColor.blackColor),
                      SizedBox(width: 6,),
                      Image(image: AssetImage('assets/images/google.png'))
                    ],
                  ),
                ),
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmallText(text: 'Already have an account? ',color: AppColor.textColor,),
                    SmallText(text: 'Sign in',color: AppColor.mainColor,),
                  ],
                ),
                SizedBox(height: 12,),
                Center(child: BigText(text: 'Admin'.toUpperCase(),color: AppColor.mainColor,size: 30,))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
