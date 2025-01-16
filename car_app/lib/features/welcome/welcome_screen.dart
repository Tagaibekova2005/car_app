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
                SizedBox(
                  height: 260,
                ),
                SizedBox(
                    height: 59,
                    child: Image.asset(
                      'assets/welcome_logo.png',
                      width: 145,
                    )),
                SizedBox(
                  height: 325,
                ),
                Text(
                  'Rent your dream car from the',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                      color: const Color(0xffF6F6F6CF).withOpacity(0.8)),
                ),
                Text(
                  'Best Company',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w800,
                      color: const Color(0xffF6F6F6CF).withOpacity(0.8)),
                ),
                SizedBox(
                  height: 75,
                ),
                ElevatedButton(
                  onPressed: () {},
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
