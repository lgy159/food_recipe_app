import 'package:flutter/material.dart';
import 'package:sesac_ton/presentation/components/big_button.dart';
import 'package:sesac_ton/ui/color_styles.dart';
import 'package:sesac_ton/ui/text_styles.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.asset(
            'assets/splash/splash_background.png',
            fit: BoxFit.cover,
          ),
          // Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 104, bottom: 14),
                  child: Image.asset('assets/splash/main_logo.png'),
                ),
                const SizedBox(height: 14),
                //Text Style/Medium Text/Bold
                Text(
                  '100K+ Premium Recipe ',
                  style: Fonts.mediumTextBold.copyWith(
                    color: ColorStyles.white,
                  ),
                ),
                const Expanded(child: SizedBox()),
                Text(
                  'Get',
                  style: Fonts.tittleTextBold.copyWith(
                    color: ColorStyles.white,
                  ),
                ),
                Text(
                  'Cooking',
                  style: Fonts.tittleTextBold.copyWith(
                    color: ColorStyles.white,
                  ),
                ),
                const SizedBox(height: 10),
                //Text Style/Normal Text/Regular
                Text(
                  'Simple way to find Tasty Recipe',
                  style: Fonts.normalTextRegular.copyWith(
                    color: ColorStyles.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(66, 64, 66, 84),
                  child: BigButton(title: 'Start Cooking', onTap: () {}),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
