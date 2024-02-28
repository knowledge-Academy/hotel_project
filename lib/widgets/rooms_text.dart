import 'package:flutter/material.dart';
import 'package:hotel_project/screen/rooms_screen/rooms_screen.dart';

import '../screen/about_us/about_us.dart';
import '../utils/colors.dart';
import 'small_text.dart';

class RoomsText extends StatelessWidget {
  const RoomsText({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>RoomsScreen()));
    },child: SmallText(text: 'Rooms',size: 20,color: AppColor.blackColor,));
  }
}
