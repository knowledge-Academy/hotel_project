import 'package:flutter/material.dart';
import 'sign_in_body.dart';

class SignInAdminScreen extends StatelessWidget {
  const SignInAdminScreen({super.key});

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
