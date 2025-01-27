import 'package:car_app/core/resource/extensions/int_extension.dart';
import 'package:car_app/core/resource/extensions/list_extension.dart';
import 'package:car_app/core/resource/extensions/textstyles_extensions.dart';
import 'package:car_app/features/welcome/auth/screens/app_textstyles.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.text,
    required this.image,
  });

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: [12, 60].symmetricPadding,
      decoration: BoxDecoration(
        borderRadius: 10.borderRadius,
        border: Border.all(
          color: Colors.black87,
          width: 2,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 30,
            child: Image.asset(image),
          ),
          Text(
            text,
            style: AppTextstyles.regular.setSize(14),
          )
        ],
      ),
    );
  }
}
