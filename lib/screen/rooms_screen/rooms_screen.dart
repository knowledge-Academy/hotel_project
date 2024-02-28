import 'package:flutter/material.dart';
import 'package:hotel_project/screen/rooms_screen/footer_room_screen.dart';
import 'package:hotel_project/screen/rooms_screen/photo_and_container_room_screen.dart';
import 'package:hotel_project/widgets/button.dart';
import '../../../utils/colors.dart';
import '../../../utils/dimensions.dart';
import '../../../widgets/big_text.dart';
import '../../../widgets/small_text.dart';
import '../../widgets/about_us_text.dart';
import '../../widgets/booking_hotel.dart';
import '../../widgets/rooms_text.dart';
import 'listview_of_room_screen.dart';

class RoomsScreen extends StatefulWidget {
   RoomsScreen({super.key});

  @override
  State<RoomsScreen> createState() => _RoomsScreenState();
}

class _RoomsScreenState extends State<RoomsScreen> {

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
         margin: EdgeInsets.all(12),
         child: SingleChildScrollView(
           child: Column(
             children: [
               PhotoAndContainerHomeScreen(),
               SizedBox(height: 100,),
               ListViewOfRoomScreen(),
               SizedBox(height: 100,),
               Image(image: AssetImage('assets/images/Check differences.png')),
               SizedBox(height: 50,),
               FooterRoomScreen(),
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
