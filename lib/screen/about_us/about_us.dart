import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/about_us_text.dart';
import '../../widgets/big_text.dart';
import '../../widgets/booking_hotel.dart';
import '../../widgets/button.dart';
import '../../widgets/rooms_text.dart';
import '../../widgets/small_text.dart';
import 'footer_about_us_screen.dart';
import 'photo_and_container_about_us_screen.dart';

class AboutUsScreen extends StatefulWidget {
   AboutUsScreen({super.key});

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
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
              PhotoAndContainerAboutUsScreen(),
              SizedBox(height: 100,),
              BigText(text: 'Our Story',size: 48,color: AppColor.textColor,),
              SizedBox(height: 25,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Stack(
                        alignment: AlignmentDirectional.topCenter,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 110.0),
                            child: Image(
                                width: 600,
                                image: AssetImage('assets/images/our_story_photo.png',),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(24),
                            color: AppColor.whiteColor,
                            width: 510,
                            height: 280,
                            child: Column(
                              children: [
                                SmallText(text: 'Riverside hotel over Imerovigli’s flower-carpeted cliffs to transport you to Santorini’s Venetian past,'
                                    ' the magnificently stark beauty of the caldera, and its celebrated sunsets.',size: 12,color: AppColor.blackColor,),
                                SizedBox(height: 12,),
                                SmallText(text: 'IMEROVIGLI IS A QUIET, PEACEFUL VILLAGE, WITH CHARACTER.',size: 38,color: AppColor.blackColor,),
                              ],

                            ),
                          ),
                        ],

                      ),
                    ),
                    SizedBox(width: 100,),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(24),
                            color: AppColor.whiteColor,
                            width: 500,
                            child: Column(
                              children: [
                                Container(
                                  width: 316,
                                  child: SmallText(text: 'Riverside hotel over Imerovigli’s flower-carpeted cliffs to transport you to Santorini’s Venetian past,'
                                      ' the magnificently stark beauty of the caldera, and its celebrated sunsets.'
                                    'We are thrilled to have been listed in the Top 25 Hotels of the World and among the Top 5 Small Boutique Hotels by TripAdvisor, '
                                      'three times named as Greece’s Leading All Suite Hotel at the World Travel Awards, '
                                      'the Most Romantic Hotel and Best Service Hotel at the Condé Nast Johansens annual awards, '
                                      'as well as been awarded gold for Excellence in Customer Service at the Greek Tourism Awards.',size: 14,color: AppColor.blackColor,),
                                ),
                                SizedBox(height: 24,),
                                Container(
                                  width: 315,
                                    child: SmallText(text: 'YOU HAVE JUST SELECTED TO STAY AT ONE OF THE TOP 25 HOTELS IN THE WORLD',size: 32,color: AppColor.blackColor,)),
                                SizedBox(height: 60,),
                                Container(
                                  width: 315,
                                    child: SmallText(text: 'The Catey AWARDS',size: 36,color: AppColor.textColor,fontWeight: FontWeight.bold,)),
                              ],

                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100,),
              FooterAboutUsScreen()
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
