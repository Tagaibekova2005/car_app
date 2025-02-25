import 'package:car_app/core/resource/extensions/int_extension.dart';
import 'package:car_app/features/welcome/app_colors.dart';
import 'package:car_app/features/welcome/auth/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/welcome_bg.png',
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                260.verticalSpace,
                SizedBox(
                    height: 59,
                    child: Image.asset(
                      'assets/welcome_logo.png',
                      width: 145,
                    )),
                325.verticalSpace,
                Text(
                  'Rent your dream car from the',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                      color: AppColors.f6f6f6.withOpacity(0.8)),
                ),
                Text(
                  'Best Company',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                      color: const Color.fromARGB(246, 252, 252, 241)
                          .withOpacity(0.8)),
                ),
                75.verticalSpace,
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffC64949),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 65,
                    ),
                    child: const Text(
                      'Get started',
                      style: TextStyle(
                          height: 2,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
