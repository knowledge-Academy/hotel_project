import 'package:flutter/material.dart';

import '../screen/home_screen/home_screen.dart';
import '../utils/colors.dart';
import 'big_text.dart';

class BookingHotelText extends StatelessWidget {
  const BookingHotelText({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
      },
      child: BigText(
        text: 'Booking Hotels',
        color: AppColor.blueColor,
      ),
    );
  }
}
