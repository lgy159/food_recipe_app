import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../ui/color_styles.dart';
import '../../ui/text_styles.dart';
import '../components/big_button.dart';
import '../components/divide_text.dart';
import '../components/input_field.dart';
import '../components/sns_login_buttons.dart';

class SingInScreen extends StatefulWidget {
  const SingInScreen({super.key});

  @override
  State<SingInScreen> createState() => _SingInScreenState();
}

class _SingInScreenState extends State<SingInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 50, 30, 27),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello',
                style: Fonts.headerTextBold.copyWith(
                  color: ColorStyles.black,
                ),
              ),
              Text(
                'welcome Back!',
                style: Fonts.largeTextRegular.copyWith(
                  color: ColorStyles.black2,
                ),
              ),
              // Email TextField
              InputField(
                label: 'Email',
                placeHolder: 'Enter Email',
                onChanged: (String text) {},
                topPadding: 57,
              ),
              // Password TextField
              InputField(
                label: 'Enter Password',
                placeHolder: 'Enter Password',
                onChanged: (String text) {},
                topPadding: 30,
              ),

              // Text Style/Smaller Text/Regular
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 0, 25),
                child: Text(
                  'Forgot password?',
                  style: Fonts.smallerTextRegular.copyWith(
                    color: ColorStyles.secondary100,
                  ),
                ),
              ),
              BigButton(
                title: 'Sign In',
                onTap: () {},
              ),

              const DivideText(
                label: 'or Sign in With',
                topPadding: 20,
              ),
              const SnsLoginButtons(),

              // Sing up
              GestureDetector(
                onTap: () {
                  context.go('/sing_up');

                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 55),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Text Style/Smaller Text/Semi Bold
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Don’t have an account? ',
                              style: Fonts.smallerTextBold.copyWith(
                                color: ColorStyles.black,
                              ),
                            ),
                            TextSpan(
                              text: 'Sign up',
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
