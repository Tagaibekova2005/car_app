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
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 60),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
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
