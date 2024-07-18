import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../ui/color_styles.dart';
import '../../ui/text_styles.dart';
import '../components/big_button.dart';
import '../components/divide_text.dart';
import '../components/input_field.dart';
import '../components/sns_login_buttons.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 27),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text Style/Large Text/Bold
              Text(
                'Create an account',
                style: Fonts.largeTextBold.copyWith(
                  color: ColorStyles.black,
                ),
              ),
              //Text Style/Smaller Text/Regular
              Text(
                'Let’s help you set up your account,',
                style: Fonts.smallerTextRegular.copyWith(
                  color: ColorStyles.black2,
                ),
              ),
              Text(
                'it won’t take long.',
                style: Fonts.smallerTextRegular.copyWith(
                  color: ColorStyles.black2,
                ),
              ),

              // Name TextField
              InputField(
                label: 'Name',
                placeHolder: 'Enter Name',
                onChanged: (String text) {},
                topPadding: 20,
              ),
              // Email TextField
              InputField(
                label: 'Email',
                placeHolder: 'Enter Email',
                onChanged: (String text) {},
                topPadding: 20,
              ),
              // Password TextField
              InputField(
                label: 'Enter Password',
                placeHolder: 'Enter Password',
                onChanged: (String text) {},
                topPadding: 20,
              ),
              // Confirm Password TextField
              InputField(
                label: 'Confirm Password',
                placeHolder: 'Retype Password',
                onChanged: (String text) {},
                topPadding: 20,
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked = value!;
                        });
                      },
                      activeColor: ColorStyles.secondary100,
                    ),
                    Text(
                      'Accept terms & Condition',
                      style: Fonts.smallerTextRegular.copyWith(
                        color: ColorStyles.secondary100,
                      ),
                    ),
                  ],
                ),
              ),

              BigButton(
                title: 'Sign Up',
                onTap: () {
                  context.go('/home');
                },
              ),

              const DivideText(
                label: 'or Sign in With',
                topPadding: 14,
              ),

              const SnsLoginButtons(),

              // Sing up
              GestureDetector(
                onTap: () {
                  context.go('/sing_in');
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Already a member',
                              style: Fonts.smallerTextBold.copyWith(
                                color: ColorStyles.black,
                              ),
                            ),
                            TextSpan(
                              text: 'Sign in',
                              style: Fonts.smallerTextBold.copyWith(
                                color: ColorStyles.secondary100,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
