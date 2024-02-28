import 'package:flutter/material.dart';
import 'package:hotel_project/utils/colors.dart';
import 'package:hotel_project/utils/dimensions.dart';

class TextFieldTemplate extends StatelessWidget {

  final String hint;
  double borderRadiusSize;
  TextEditingController? textEditingController;
  IconData? prefixIcon;
  IconData? suffixIcon;
  double height;
  double width;

  TextFieldTemplate({
    super.key,
    required this.hint,
    this.borderRadiusSize = 12,
    this.textEditingController,
    this.suffixIcon,
    this.prefixIcon,
    this.height = 50,
    this.width = 350
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: TextFormField(
        decoration: InputDecoration(
          suffixIcon: Icon(suffixIcon),
          prefix: Icon(prefixIcon),
          labelText: hint,
          labelStyle: TextStyle(color: AppColor.textColor,fontSize: 14,height: 2),
          focusColor: Colors.blue,
          prefixIconColor: Colors.blue,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
            borderRadius: BorderRadius.circular(10),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadiusSize),


          ),

        ),
      ),
    );
  }
}
