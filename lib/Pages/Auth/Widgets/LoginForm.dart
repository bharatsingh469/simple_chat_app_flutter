import 'package:chat_app/Widget/PrimaryButton.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       const SizedBox(height: 40,),
       const TextField(
          decoration: InputDecoration(
            hintText: "Email",
            prefixIcon: Icon(Icons.alternate_email_rounded),
          ),
        ),
       const SizedBox(
          height: 40,
        ),
        const TextField(
          decoration: InputDecoration(
            hintText: "Password",
            prefixIcon: Icon(Icons.password_outlined),
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PrimaryButton(
                btnName: "Login", icon: Icons.lock_open_outlined, ontap: () {}),
          ],
        ), 
      ],
    );
  }
}
