import 'package:flutter/material.dart';
import 'package:hotel_project/widgets/icon.dart';

import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/small_text.dart';

class PhotoAndBookingHomeScreen extends StatefulWidget {
   PhotoAndBookingHomeScreen({super.key});

  @override
  State<PhotoAndBookingHomeScreen> createState() => _PhotoAndBookingHomeScreenState();
}

class _PhotoAndBookingHomeScreenState extends State<PhotoAndBookingHomeScreen> {

  String? _dropItemHotelValue = 'select';
  DateTime _selectTimeArrival = DateTime.now();
  DateTime _selectTimeDeparture = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        mainImageOfHomeScreen(),
        containerOfBookingOfHomeScreen(),
      ],
    );
  }
  Widget mainImageOfHomeScreen()
  {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image(
          height: Dimension.height900,
          width: double.infinity,
          fit: BoxFit.fill,
          image: AssetImage('assets/images/home_photo_one.png')),
    );
  }
  Widget containerOfBookingOfHomeScreen()
  {
    return Container(
      margin: EdgeInsets.only(left: Dimension.width350,bottom: Dimension.height120),
      width: Dimension.width900,
      height: Dimension.height100,
      child: Row(
        children: [
          hotelContainer(),
          arrivalContainer(),
          departureContainer(),
          bookingContainer(),
        ],
      ),
    );
  }
  Widget hotelContainer()
  {
    return Container(
      decoration: BoxDecoration(color: Colors.grey.shade600,borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomLeft: Radius.circular(12),)),
      padding: EdgeInsets.only(left: Dimension.width16),
      height: Dimension.height90,
      width: Dimension.width250,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SmallText(text: 'Hotel or Destination',color: AppColor.whiteColor),
          DropdownButton(
              borderRadius: BorderRadius.circular(12),
              elevation: 0,
              isExpanded: false,
              dropdownColor: AppColor.blueColor,
              underline: SmallText(text: ''),
              icon: IconTemplate(iconData: Icons.keyboard_arrow_down_outlined,iconSize: 24,iconColor: AppColor.whiteColor,),
              value: _dropItemHotelValue,
              padding: EdgeInsets.zero,
              items: [
                DropdownMenuItem(child: SmallText(text: 'Select',color: AppColor.whiteColor,),value: 'select',),
                DropdownMenuItem(child: SmallText(text: 'Ocean Heaven Hotel',color: AppColor.whiteColor,),value: 'Ocean',),
                DropdownMenuItem(child: SmallText(text: 'High-Sky Abode',color: AppColor.whiteColor,),value: 'Sky',),
                DropdownMenuItem(child: SmallText(text: 'Getaway Mansion',color: AppColor.whiteColor,),value: 'Getaway',),
                DropdownMenuItem(child: SmallText(text: 'Sun City Cottages',color: AppColor.whiteColor,),value: 'Sun',),
                DropdownMenuItem(child: SmallText(text: 'Mountain Dreamers Lodge',color: AppColor.whiteColor,),value: 'Mountain',),
                DropdownMenuItem(child: SmallText(text: 'Valley of Serenity Inn',color: AppColor.whiteColor,),value: 'Valley',),
                DropdownMenuItem(child: SmallText(text: 'Coastal Sunrise Haven',color: AppColor.whiteColor,),value: 'Coastal',),
                DropdownMenuItem(child: SmallText(text: 'Cozy Oasis Retreats',color: AppColor.whiteColor,),value: 'Cozy',),
              ],
              onChanged: (value){
                setState(() {
                  _dropItemHotelValue = value;
                });
              })
        ],),
    );
  }
  Widget arrivalContainer()
  {
    return Container(
      padding: EdgeInsets.only(left: Dimension.width16),
      height: Dimension.height90,
      width: Dimension.width250,
      color: Colors.grey.shade800,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SmallText(text: 'Arrival',color: AppColor.whiteColor,),
          Row(
            children: [
              SmallText(text: _selectTimeArrival.toString(),color: AppColor.whiteColor,),
              Spacer(),
              IconButton(onPressed: ()async{
                await showDatePicker(
                  context: context,
                  initialDate: _selectTimeArrival,
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2030,1),
                ).then((value){
                  setState(() {
                    _selectTimeArrival = value!;
                  });
                });

              }, icon: IconTemplate(iconData: Icons.calendar_month,iconSize: 24,iconColor: AppColor.whiteColor,)),
            ],
          )
        ],),
    );
  }
  Widget departureContainer()
  {
    return Container(
      padding: EdgeInsets.only(left: Dimension.width16),
      height: Dimension.height90,
      width: Dimension.width250,
      color: Colors.grey.shade900,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SmallText(text: 'Departure',color: AppColor.whiteColor),
          Row(
            children: [
              SmallText(text: _selectTimeDeparture.toString(),color: AppColor.whiteColor,),
              Spacer(),
              IconButton(onPressed: ()async{
                await showDatePicker(
                  context: context,
                  initialDate: _selectTimeDeparture,
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2030,1),
                ).then((value){
                  setState(() {
                    _selectTimeDeparture = value!;
                  });
                });

              }, icon: IconTemplate(iconData: Icons.calendar_month,iconSize: 24,iconColor: AppColor.whiteColor,)),
            ],
          ),
        ],
      ),
    );
  }
  Widget bookingContainer()
  {
    return  Container(
      decoration: BoxDecoration(color: AppColor.blueColor,borderRadius: BorderRadius.only(topRight: Radius.circular(12),bottomRight: Radius.circular(12),)),
      padding: EdgeInsets.only(left: Dimension.width12),
      height: Dimension.height90,
      width: Dimension.width110,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SmallText(text: 'Booking',color: AppColor.whiteColor,size: 24),
        ],
      ),
    );
  }

}
