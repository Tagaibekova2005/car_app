import 'package:car_app/core/resource/app_assets.dart';
import 'package:car_app/core/resource/extensions/context_extension.dart';
import 'package:car_app/core/resource/extensions/int_extension.dart';
import 'package:car_app/core/resource/extensions/list_extension.dart';
import 'package:car_app/core/resource/extensions/textstyles_extensions.dart';
import 'package:car_app/features/welcome/auth/auth_text_fieled.dart';
import 'package:car_app/features/welcome/auth/screens/app_textstyles.dart';
import 'package:car_app/features/welcome/auth/screens/auth_button.dart';
import 'package:car_app/features/welcome/auth/screens/sign_in_screen.dart';
import 'package:car_app/service/shared_prefs.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _nameController = TextEditingController();
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();

  final _prefs = SharedPrefs();

  @override
  void dispose() {
    _nameController.dispose();
    _loginController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 28, right: 13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              71.verticalSpace,
              Text(
                'Sign Up',
                style: AppTextstyles.regular.setSize(48),
              ),
              100.verticalSpace,
              AuthTextFieled(
                  controller: _nameController,
                  hint: 'Full name',
                  title: 'Enter your name'),
              20.verticalSpace,
              AuthTextFieled(
                  controller: _loginController,
                  hint: 'Loremipsum@gmail.com',
                  title: 'EMAIL OR PHONE'),
              25.verticalSpace,
              AuthTextFieled(
                  controller: _passwordController,
                  hint: '*******',
                  title: 'PASSWORD'),
              40.verticalSpace,
              InkWell(
                onTap: () {
                  _prefs.save(
                      key: StorageKey.login, value: _loginController.text);
                  _prefs.save(
                      key: StorageKey.password,
                      value: _passwordController.text);
                  context.push(const SignInScreen());
                },
                child: Container(
                  padding: [12, 52].symmetricPadding,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xff2B4C59), borderRadius: 10.borderRadius),
                  child: Center(
                    child: SizedBox(
                      child: Text('Sign Up',
                          style: AppTextstyles.semiBold
                              .setSize(20)
                              .copyWith(color: Colors.white)),
                    ),
                  ),
                ),
              ),
              10.verticalSpace,
              Center(
                  child: Text(
                'OR',
                style: TextStyle(fontSize: 16),
              )),
              10.verticalSpace,
              AuthButton(text: 'Continue With Google', image: AppAssets.chrome),
              15.verticalSpace,
              AuthButton(
                  text: 'Continue With Facebook', image: AppAssets.facebook),
              40.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Have an account Already?'),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(
                          color: Color(0xffFCC21B),
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                          fontSize: 13),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
