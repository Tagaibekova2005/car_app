import 'package:car_app/core/resource/extensions/textstyles_extensions.dart';
import 'package:car_app/features/welcome/auth/screens/app_textstyles.dart';
import 'package:flutter/material.dart';

class CarChipWidget extends StatelessWidget {
  const CarChipWidget({super.key, required this.label, required this.isActive});

  final String label;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Chip(
      side: BorderSide(
          color: isActive ? Colors.transparent : const Color(0xff2B4C59)),
      backgroundColor: isActive ? const Color(0xff2B4C59) : Colors.white,
      label: Text(
        label,
        style: isActive
            ? AppTextstyles.semiBold.setSize(14).copyWith(color: Colors.white)
            : AppTextstyles.regular
                .setSize(14)
                .copyWith(color: const Color(0xff2B4C59)),
      ),
    );
  }
}
