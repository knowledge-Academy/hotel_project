import 'package:flutter/material.dart';
import 'sign_in_body.dart';

class SignInUserScreen extends StatelessWidget {
  const SignInUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SignInBody()
          ],
        ),
      ),
    );
  }
}
