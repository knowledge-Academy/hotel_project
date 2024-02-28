import 'package:flutter/material.dart';
import 'package:hotel_project/utils/dimensions.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
import '../../widgets/small_text.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          BigText(text: 'Contact Us',color: AppColor.textColor,size: Dimension.width44,),
          SizedBox(height: Dimension.height16,),
          Container(
            decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(12)),
            padding: EdgeInsets.all(Dimension.height30),
            width: Dimension.width820,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'name',
                        ),
                      ),
                    ),
                    SizedBox(width: Dimension.width30,),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'surname',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Dimension.height20,),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'city',
                        ),
                      ),
                    ),
                    SizedBox(width: Dimension.width30,),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'country',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Dimension.height20,),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'phone',
                        ),
                      ),
                    ),
                    SizedBox(width: Dimension.width30,),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'email',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Dimension.height30,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Container(
                        height: Dimension.height150,
                        child: TextField(
                          textAlignVertical: TextAlignVertical.top,
                          maxLines: null,
                          expands: true,
                          decoration: InputDecoration(
                            hintText: 'Message',
                            border: OutlineInputBorder(

                            ),

                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: Dimension.width30,),
                    Expanded(
                        child: Container(
                          width: double.infinity,
                          height: Dimension.height35,
                          color: AppColor.mainColor,
                          child: Center(child: SmallText(text: 'Send',color: AppColor.whiteColor,)),
                        )
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
