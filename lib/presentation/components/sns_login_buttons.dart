import 'package:flutter/material.dart';
import 'package:sesac_ton/ui/color_styles.dart';

class SnsLoginButtons extends StatelessWidget {
  const SnsLoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SnsLoginButton(
            onTap: () {},
            filePath: 'assets/google.png',
          ),
          const SizedBox(width: 25.0),
          SnsLoginButton(
            onTap: () {},
            filePath: 'assets/facebook.png',
          ),
        ],
      ),
    );
  }
}

class SnsLoginButton extends StatelessWidget {
  final void Function() onTap;
  final String filePath;

  const SnsLoginButton({
    super.key,
    required this.onTap,
    required this.filePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(
          color: ColorStyles.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 10.0,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Center(
          child: Image(
            image: AssetImage(filePath),
            width: 24,
            height: 24,
          ),
        ),
      ),
    );
  }
}
