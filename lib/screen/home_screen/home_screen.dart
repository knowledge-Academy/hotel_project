import 'package:flutter/material.dart';
import 'package:hotel_project/screen/home_screen/app_bar_home_screen.dart';
import 'package:hotel_project/screen/home_screen/contact_us.dart';
import 'package:hotel_project/screen/home_screen/footer_home_screen.dart';
import 'package:hotel_project/screen/home_screen/our_events.dart';
import 'package:hotel_project/screen/home_screen/our_rooms.dart';
import 'package:hotel_project/utils/colors.dart';
import 'package:hotel_project/utils/dimensions.dart';
import 'package:hotel_project/widgets/small_text.dart';
import '../../widgets/about_us_text.dart';
import '../../widgets/big_text.dart';
import '../../widgets/booking_hotel.dart';
import '../../widgets/button.dart';
import '../../widgets/rooms_text.dart';
import 'about_us.dart';
import 'our_cuisine.dart';
import 'photo_and_booking_home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? _dropDownValue = "en";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        toolbarHeight: 100,
        title:BookingHotelText(),
        actions: [
          _listViewOfTitle(),
          SizedBox(width: 12,),
          _listViewOfLanguage(),
          SizedBox(width: 20,),
          ButtonTemplate(text: 'Book',containerHeight: 50),
          SizedBox(width: 50,),

        ],
      ),
      drawer: Drawer(),
      body: Container(
        margin: EdgeInsets.all(6),
        width: Dimension.width,
        height: Dimension.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              PhotoAndBookingHomeScreen(),
              SizedBox(height: Dimension.height75,),
              AboutUs(),
              SizedBox(height: Dimension.height75,),
              OurRooms(),
              SizedBox(height: Dimension.height75,),
              OurEvents(),
              SizedBox(height: Dimension.height75,),
              OurCuisine(),
              SizedBox(height: Dimension.height75,),
              ContactUs(),
              SizedBox(height: 100,),
              FooterHomeScreen()
            ],
          ),
        ),
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