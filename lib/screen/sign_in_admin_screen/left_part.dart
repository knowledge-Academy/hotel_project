import 'package:flutter/material.dart';
import 'package:hotel_project/screen/home_screen/home_screen.dart';
import 'package:hotel_project/screen/sign_in_user_screen/sign_in_user_screen.dart';
import 'package:hotel_project/screen/sign_up_admin_screen/sign_up_admin_screen.dart';
import 'package:hotel_project/screen/sign_up_user_screen/sign_up_user_screen.dart';
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
                BigText(text: 'Sign in',size: 30,),
                SmallText(text: 'Please login to continue to your account.',size: Dimension.height16,),
                SizedBox(height: 20,),
                TextFieldTemplate(
                  hint: 'Email',
                  borderRadiusSize: 10,
                  prefixIcon: Icons.email,
                ),
                SizedBox(height: Dimension.height16,),
                TextFieldTemplate(
                  hint: 'Password',
                  borderRadiusSize: 10,
                  prefixIcon: Icons.password,
                  suffixIcon: Icons.remove_red_eye,
                ),
                SizedBox(height: Dimension.height12,),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (value){}),
                    SmallText(text: 'Keep me logged in',color: AppColor.blackColor,)
                  ],
                ),
                SizedBox(height: 12,),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                  },
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                        color: AppColor.mainColor,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: SmallText(text: 'Sign in',color: Colors.white)),
                  ),
                ),
                SizedBox(height: 12,),
                Center(child: SmallText(text: 'or',color: AppColor.textColor,)),
                SizedBox(height: 12,),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                  },
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColor.textColor),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SmallText(text: 'Sign in with Google',color: AppColor.blackColor),
                        SizedBox(width: 6,),
                        Image(image: AssetImage('assets/images/google.png'))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmallText(text: 'Need an account? ',color: AppColor.textColor,),
                    InkWell(onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUpAdminScreen()));
                    },child: SmallText(text: 'Create one',color: AppColor.mainColor,)),
                  ],
                ),
                SizedBox(height: 12,),
                Center(child: InkWell(onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignInUserScreen()));
                },child: BigText(text: 'User'.toUpperCase(),color: AppColor.mainColor,size: 30,)))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
