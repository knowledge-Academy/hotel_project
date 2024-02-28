import 'package:flutter/material.dart';
import 'package:hotel_project/utils/colors.dart';
import 'package:hotel_project/widgets/big_text.dart';
import 'package:hotel_project/widgets/button.dart';
import 'package:hotel_project/widgets/icon.dart';
import 'package:hotel_project/widgets/small_text.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class ListViewOfRoomScreen extends StatefulWidget {
   ListViewOfRoomScreen({super.key});

  @override
  State<ListViewOfRoomScreen> createState() => _ListViewOfRoomScreenState();
}

class _ListViewOfRoomScreenState extends State<ListViewOfRoomScreen> {
  List<String> listOfImage = [
    'assets/images/room_photo_one.png',
    'assets/images/room_photo_one.png',
    'assets/images/room_photo_one.png',
    'assets/images/room_photo_one.png',
    'assets/images/room_photo_one.png',
  ];

  AutoScrollController controller = AutoScrollController();
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      child: ListView.builder(
        itemCount: 2,
          itemBuilder: (context,index){
       return index % 2 == 0 ? Container(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SmallText(text: 'Deluxe Room',size: 32,color: AppColor.blackColor,),
                      SizedBox(height: 25,),
                      SmallText(text: 'The way we travel and move has changed in the last few years. '
                          'We no longer want the typical photo that all our contacts post on Instagram. '
                          'We no longer want to elbow our way through crowded museums. '
                          'We no longer want to view the city through the mobile lens. '
                          'It’s not about travelling, it’s about discovering. '),
                      SizedBox(height: 25,),
                      ButtonTemplate(
                        text: 'Check Availability',
                        containerWidth: 300,
                        containerHeight: 40,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 500,
                  width: double.infinity,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      ListView.builder(
                        controller: controller,
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context,index){
                          _index = index;

                        return AutoScrollTag(
                          controller: controller,
                          index: index,
                          key: ValueKey(index),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(12),topRight: Radius.circular(12),bottomRight: Radius.circular(12),),
                              child: Image(
                                fit: BoxFit.fill,
                                height: 500,
                                width: 755,
                                image: AssetImage('assets/images/room_photo_two.png'),
                              ),
                             ),
                          ),
                        );
                         },
                        ),
                      Container(
                        padding: EdgeInsets.only(bottom: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(onTap: (){
                              _index++;
                              if(_index > 4)
                                {
                                  _index = 0;
                                }
                              controller.scrollToIndex(_index,preferPosition: AutoScrollPosition.begin,);
                              setState(() {});
                            },child: IconTemplate(iconData: Icons.arrow_back_ios,iconColor: AppColor.whiteColor,)),
                            SizedBox(width: 24,),
                            SmallText(text: '${_index}/'),
                            SmallText(text: '${listOfImage.length}'),
                            SizedBox(width: 24,),
                            InkWell(onTap: (){
                              _index--;
                              if(_index < 0)
                                {
                                  _index = listOfImage.length -1;
                                }
                              controller.scrollToIndex(_index,preferPosition: AutoScrollPosition.end);
                              setState(() {});
                            },child: IconTemplate(iconData: Icons.arrow_forward_ios,iconColor: AppColor.whiteColor,))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ) :
       Container(
         child: Row(
           children: [
             Expanded(
               child: Container(
                 height: 500,
                 width: double.infinity,
                 child: Stack(
                   alignment: Alignment.bottomCenter,
                   children: [
                     ListView.builder(
                       controller: controller,
                       scrollDirection: Axis.horizontal,
                       itemCount: 5,
                       itemBuilder: (context,index){
                         print(index);
                         return AutoScrollTag(
                           controller: controller,
                           index: index,
                           key: ValueKey(index),
                           child: Padding(
                             padding: const EdgeInsets.only(right: 4),
                             child: ClipRRect(
                               borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12),),
                               child: Image(
                                 fit: BoxFit.fill,
                                 height: 500,
                                 width: 755,
                                 image: AssetImage('assets/images/room_photo_two.png'),
                               ),
                             ),
                           ),
                         );
                       },
                     ),
                     Container(
                       padding: EdgeInsets.only(bottom: 24),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           InkWell(onTap: (){
                             _index++;
                             if(_index > 4)
                             {
                               _index = 0;
                             }
                             controller.scrollToIndex(_index,preferPosition: AutoScrollPosition.begin,);
                             setState(() {});
                           },child: IconTemplate(iconData: Icons.arrow_back_ios,iconColor: AppColor.whiteColor,)),
                           SizedBox(width: 24,),
                           SmallText(text: '${_index}/'),
                           SmallText(text: '${listOfImage.length}'),
                           SizedBox(width: 24,),
                           InkWell(onTap: (){
                             _index--;
                             if(_index < 0)
                             {
                               _index = listOfImage.length -1;
                             }
                             controller.scrollToIndex(_index,preferPosition: AutoScrollPosition.end);
                             setState(() {});
                           },child: IconTemplate(iconData: Icons.arrow_forward_ios,iconColor: AppColor.whiteColor,))
                         ],
                       ),
                     ),
                   ],
                 ),
               ),
             ),
             Expanded(
               child: Container(
                 margin: EdgeInsets.all(100),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     SmallText(text: 'Deluxe Room',size: 32,color: AppColor.blackColor,),
                     SizedBox(height: 25,),
                     SmallText(text: 'The way we travel and move has changed in the last few years. '
                         'We no longer want the typical photo that all our contacts post on Instagram. '
                         'We no longer want to elbow our way through crowded museums. '
                         'We no longer want to view the city through the mobile lens. '
                         'It’s not about travelling, it’s about discovering. '),
                     SizedBox(height: 25,),
                     ButtonTemplate(
                       text: 'Check Availability',
                       containerWidth: 300,
                       containerHeight: 40,
                     ),
                   ],
                 ),
               ),
             ),
           ],
         ),
       );
      }),
    );
  }
}
