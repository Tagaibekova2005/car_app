import 'package:car_app/core/resource/extensions/textstyles_extensions.dart';
import 'package:car_app/features/welcome/auth/screens/app_textstyles.dart';
import 'package:flutter/material.dart';
import 'package:car_app/features/welcome/auth/screens/sign_in_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 28, right: 13),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 71,
              ),
              Text(
                'Sign in',
                style: AppTextstyles.regular.setSize(48),
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                'EMAIL OR PHONE',
                style: AppTextstyles.regular.setSize(14),
              ),
              TextFormField(
                decoration:
                    const InputDecoration(hintText: 'Loremipsum@gmail.com'),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'PASSWORD',
                style: AppTextstyles.regular.setSize(14),
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: '*******'),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Forgot password?'),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(onPressed: () {}, child: Text('Log In')),
              Text('OR'),
              SignInButton(
                  text: 'Continue with Facebook', image: Icon(Icons.facebook)),
              SignInButton(
                text: 'Continue with Giigle',
                image: Icon(Icons.nature_people_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
