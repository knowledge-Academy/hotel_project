import 'package:flutter/material.dart';
import 'package:hotel_project/screen/sign_up_admin_screen/sign_up_body.dart';

class SignUpAdminScreen extends StatelessWidget {
  const SignUpAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SignUpBody()
          ],
        ),
      ),
    );
  }
}
