import 'package:car_app/core/mixins/app_notice.dart';
import 'package:car_app/core/resource/app_assets.dart';
import 'package:car_app/core/resource/extensions/context_extension.dart';
import 'package:car_app/core/resource/extensions/int_extension.dart';
import 'package:car_app/core/resource/extensions/list_extension.dart';
import 'package:car_app/core/resource/extensions/textstyles_extensions.dart';
import 'package:car_app/features/home/home_screen.dart';
import 'package:car_app/features/welcome/auth/auth_text_fieled.dart';
import 'package:car_app/features/welcome/auth/screens/app_textstyles.dart';
import 'package:car_app/service/shared_prefs.dart';
import 'package:flutter/material.dart';
import 'package:car_app/features/welcome/auth/screens/auth_button.dart';
import 'package:car_app/features/welcome/auth/screens/sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> with AppNotice {
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();
  final _prefs = SharedPrefs();

  @override
  void dispose() {
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
                'Sign In',
                style: AppTextstyles.regular.setSize(48),
              ),
              100.verticalSpace,
              AuthTextFieled(
                  controller: _loginController,
                  hint: 'Enter email',
                  title: 'EMAIL OR PHONE'),
              25.verticalSpace,
              Text(
                'PASSWORD',
                style: AppTextstyles.regular.setSize(14),
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: '********'),
              ),
              10.verticalSpace,
              Text('Forgot password?'),
              40.verticalSpace,
              InkWell(
                onTap: () async {
                  final login = await _prefs.read(key: StorageKey.login);
                  final password = await _prefs.read(key: StorageKey.password);
                  if (login == _loginController.text &&
                      password == _passwordController.text) {
                    showError(errorText: 'Ошибка при авторизации');
                  } else {
                    showSuccess(message: 'Успешный вход');
                    context.push(
                      const HomeScreen(),
                    );
                  }
                },
                child: Container(
                  height: 60,
                  padding: [12, 60].symmetricPadding,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xff2B4C59), borderRadius: 10.borderRadius),
                  child: Center(
                    child: SizedBox(
                      child: Text('Log In',
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
                  Text('Don’t Have an account yet?'),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: Text(
                      'SIGN UP',
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
