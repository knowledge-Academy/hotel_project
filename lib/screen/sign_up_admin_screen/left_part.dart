import 'package:flutter/material.dart';
import 'package:hotel_project/screen/sign_in_user_screen/sign_in_user_screen.dart';
import 'package:hotel_project/utils/colors.dart';
import 'package:hotel_project/utils/dimensions.dart';
import 'package:hotel_project/widgets/big_text.dart';
import 'package:hotel_project/widgets/small_text.dart';
import 'package:hotel_project/widgets/text_field.dart';

import '../sign_in_admin_screen/sign_in_screen.dart';
import 'logo.dart';
import 'sign_up_admin_screen.dart';

class LeftPartOfSignUpPage extends StatelessWidget {
  const LeftPartOfSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 735 ,
      child: Column(
        children: [
          LogoHotel(),
          SizedBox(height: 16,),
          Container(
            width: 320,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(text: 'Sign Up',size: 24,),
                SmallText(text: 'Sign up to enjoy the feature of Revolutie',size: Dimension.height16,),
                SizedBox(height: 16,),
                TextFieldTemplate(
                  height: 40,
                  hint: 'Name',
                  borderRadiusSize: 10,
                  prefixIcon: Icons.person,
                ),
                SizedBox(height: 8,),
                TextFieldTemplate(
                  height: 40,
                  hint: 'Phone',
                  borderRadiusSize: 10,
                  prefixIcon: Icons.phone,
                ),
                SizedBox(height: 8,),
                TextFieldTemplate(
                  height: 40,
                  hint: 'SSN',
                  borderRadiusSize: 10,
                  prefixIcon: Icons.card_membership,
                ),
                SizedBox(height: 8,),
                TextFieldTemplate(
                  height: 40,
                  hint: 'Gender',
                  borderRadiusSize: 10,
                  prefixIcon: Icons.data_exploration_sharp,
                ),
                SizedBox(height: 8,),
                TextFieldTemplate(
                  height: 40,
                  hint: 'Address',
                  borderRadiusSize: 10,
                  prefixIcon: Icons.location_on,
                ),
                SizedBox(height: 8,),
                TextFieldTemplate(
                  height: 40,
                  hint: 'Date of Birth',
                  borderRadiusSize: 10,
                  prefixIcon: Icons.date_range,
                ),
                SizedBox(height: 8,),
                TextFieldTemplate(
                  height: 40,
                  hint: 'Email',
                  borderRadiusSize: 10,
                  prefixIcon: Icons.email,
                ),
                SizedBox(height: 8,),
                TextFieldTemplate(
                  height: 40,
                  hint: 'Password',
                  borderRadiusSize: 10,
                  prefixIcon: Icons.password,
                  suffixIcon: Icons.remove_red_eye,
                ),
                SizedBox(height: 8,),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignInAdminScreen()));
                  },
                  child: Container(
                    height: 40,
                    width: 350,
                    decoration: BoxDecoration(
                        color: AppColor.mainColor,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: SmallText(text: 'Sign up',color: Colors.white)),
                  ),
                ),
                SizedBox(height: 8,),
                Center(child: SmallText(text: 'or',color: AppColor.textColor,)),
                SizedBox(height: 8,),
                Container(
                  height: 40,
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
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmallText(text: 'Already have an account? ',color: AppColor.textColor,),
                    GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignInAdminScreen()));
                        },child: SmallText(text: 'Sign in',color: AppColor.mainColor,)),
                  ],
                ),
                SizedBox(height: 8,),
                GestureDetector(onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignInUserScreen()));
                },child: Center(child: BigText(text: 'User'.toUpperCase(),color: AppColor.mainColor,size: 30,)))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
