import 'package:flutter/material.dart';
import 'package:hotel_project/screen/about_us/about_us.dart';
import 'package:hotel_project/screen/home_screen/contact_us.dart';
import 'package:hotel_project/screen/home_screen/home_screen.dart';
import 'package:hotel_project/screen/home_screen/our_cuisine.dart';
import 'package:hotel_project/screen/home_screen/our_events.dart';
import 'package:hotel_project/screen/rooms_screen/rooms_screen.dart';
import 'package:hotel_project/utils/dimensions.dart';
import 'package:hotel_project/widgets/about_us_text.dart';
import 'package:hotel_project/widgets/rooms_text.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/booking_hotel.dart';
import '../../widgets/small_text.dart';

class AppBarHomeScreen extends StatefulWidget {
  const AppBarHomeScreen({super.key});

  @override
  State<AppBarHomeScreen> createState() => _AppBarHomeScreenState();
}

class _AppBarHomeScreenState extends State<AppBarHomeScreen> {
  String? _dropDownValue = "en";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: Dimension.width100,
          top: Dimension.height53_5,
          right: Dimension.width100,
          bottom: Dimension.height24_5),
      child: Row(
        children: [
          BookingHotelText(),
          Spacer(),
          _listViewOfTitle(),
          SizedBox(width: 12,),
          _listViewOfLanguage(),
        ],
      ),
    );
  }
  Widget _listViewOfTitle() {
    return Container(
      height: 50,
      child: Row(
        children: [
          AboutUsText(),
          SizedBox(width: 12,),
          RoomsText(),
          SizedBox(width: 12,),
          InkWell(onTap: (){
          },child: SmallText(text: 'Events',size: 20,color: AppColor.blackColor)),
          SizedBox(width: 12,),
          InkWell(onTap: (){
          },child: SmallText(text: 'Cuisine',size: 20,color: AppColor.blackColor)),
          SizedBox(width: 12,),
          InkWell(onTap: (){
          },child: SmallText(text: 'Contact Us',size: 20,color: AppColor.blackColor)),
        ],
      )
    );
  }
  Widget _listViewOfLanguage() {
    return Container(
      decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(Dimension.height12)),
      width: Dimension.width50,
      height: Dimension.height50,
      child: Center(
        child: DropdownButton(
          borderRadius: BorderRadius.all(Radius.circular(Dimension.height12)),
          elevation: 0,
          dropdownColor: AppColor.blueColor,
          icon: Icon(
            Icons.keyboard_arrow_down_outlined,
            size: Dimension.width24,
          ),
          items: [
            DropdownMenuItem(
              child: SmallText(
                text: 'en',
                color: AppColor.blackColor,
              ),
              value: 'en',
            ),
            DropdownMenuItem(
              child: SmallText(
                text: 'ar',
                color: AppColor.blackColor,
              ),
              value: 'ar',
            ),
          ],
          onChanged: (value) {
            setState(
              () {
                _dropDownValue = value;
              },
            );
          },
          value: _dropDownValue,
        ),
      ),
    );
  }
}
