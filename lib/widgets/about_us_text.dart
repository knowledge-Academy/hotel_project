import 'package:flutter/material.dart';

import '../screen/about_us/about_us.dart';
import '../utils/colors.dart';
import 'small_text.dart';

class AboutUsText extends StatelessWidget {
  const AboutUsText({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>AboutUsScreen()));
    },child: SmallText(text: 'About Us',size: 20,color: AppColor.blackColor,));
  }
}
