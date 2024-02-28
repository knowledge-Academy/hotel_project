import 'package:flutter/material.dart';
import 'package:hotel_project/utils/dimensions.dart';

class RightPartOfSignUpPage extends StatelessWidget {
  const RightPartOfSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 735,
      width: double.infinity,
      child: Image(
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.fill,
        image: AssetImage(
          'assets/images/building_photo.png',
        ),
      ),
    );
  }
}
