import 'package:flutter/material.dart';
import 'package:hotel_project/utils/dimensions.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';

class OurEvents extends StatefulWidget {
  const OurEvents({super.key});

  @override
  State<OurEvents> createState() => _OurEventsState();
}

class _OurEventsState extends State<OurEvents> {

  int _currentPositionIndex = 0;
  final AutoScrollController controller = AutoScrollController();


  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Column(
        children: [
          BigText(
            text: 'Our Events',
            color: AppColor.textColor,
            size: Dimension.width44,
          ),
          SizedBox(
            height: Dimension.height25,
          ),
          Container(
            height: Dimension.height320,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: Dimension.width80),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      _currentPositionIndex--;
                      if (_currentPositionIndex < 0) {
                        _currentPositionIndex = 10 - 1;
                      }
                      controller.scrollToIndex(_currentPositionIndex,
                          preferPosition: AutoScrollPosition.begin);
                      print(_currentPositionIndex);
                      setState(() {});
                    },
                    icon: Icon(Icons.arrow_back_ios)),
                SizedBox(width: Dimension.width24,),
                Expanded(
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      controller: controller,
                      itemBuilder: (context, index) {
                        return AutoScrollTag(
                          key: ValueKey(index),
                          controller: controller,
                          index: index,
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
                            width: Dimension.width300,
                            height: Dimension.height300,
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(borderRadius: BorderRadius.circular(16),child: Image(image: AssetImage('assets/images/event_one.png'),)),
                                    Container(
                                      color: Colors.white,
                                      width: Dimension.width75,
                                      height: Dimension.height75,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SmallText(text: '24',color: AppColor.blackColor,size: Dimension.width24,),
                                          SmallText(text: 'Oct',color: AppColor.blackColor,size: Dimension.width16,),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: Dimension.height12,
                                ),
                                Column(
                                  children: [
                                    SmallText(text: 'Cocktails & Bites'),
                                    SmallText(text: 'Riverside  Valencia'),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: Dimension.width12,
                        );
                      },
                      itemCount: 10),
                ),
                SizedBox(width: Dimension.width24,),
                IconButton(
                    onPressed: () {
                      _currentPositionIndex++;
                      if (_currentPositionIndex > 10) {
                        _currentPositionIndex = 0;
                      }
                      controller.scrollToIndex(_currentPositionIndex,preferPosition: AutoScrollPosition.begin);
                      setState(() {});
                    },
                    icon: Icon(Icons.arrow_forward_ios))
              ],
            ),
          ),
          SizedBox(
            height: Dimension.height25,
          ),
          Container(
            alignment: Alignment.center,
            width: Dimension.width125,
            height: Dimension.height25,
            color: AppColor.blueColor,
            child: SmallText(
              text: 'Book',
              color: AppColor.whiteColor,
            ),
          )
        ],
      ),
    );
  }
}
