<<<<<<< Updated upstream
=======
import 'package:car_app/features/welcome/auth/screens/sign_in_screen.dart';
import 'package:car_app/features/welcome/welcome_screen.dart';
>>>>>>> Stashed changes
import 'package:flutter/material.dart';

void main() {
  runApp(const CarApp());
}

class CarApp extends StatelessWidget {
  const CarApp({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< Updated upstream
    return MaterialApp();
=======
    return const MaterialApp(
      home: WelcomeScreen(),
    );
>>>>>>> Stashed changes
  }
}
