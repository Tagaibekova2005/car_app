import 'package:car_app/core/resource/extensions/textstyles_extensions.dart';
import 'package:car_app/features/welcome/auth/screens/app_textstyles.dart';
import 'package:car_app/service/shared_prefs.dart';
import 'package:flutter/material.dart';

class AuthTextFieled extends StatelessWidget {
  const AuthTextFieled(
      {super.key,
      required this.controller,
      required this.hint,
      required this.title});

  final String title;
  final String hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextstyles.regular.setSize(14),
        ),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(hintText: hint),
        ),
      ],
    );
  }
}
