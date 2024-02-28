import 'package:flutter/material.dart';

import 'left_part.dart';
import 'right_part.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(flex: 2,child: LeftPartOfSignUpPage()),
          Expanded(flex: 3,child: RightPartOfSignUpPage())
        ],
      ),
    );
  }
}
