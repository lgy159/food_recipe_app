import 'package:flutter/material.dart';

import '../../ui/color_styles.dart';
import '../../ui/text_styles.dart';

class ButtonLayout extends StatelessWidget {
  final String title;
  final double width;

  const ButtonLayout({
    super.key,
    required this.width,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 33,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: ColorStyles.primary100,
      ),
      child: Center(
        child: Text(
          title,
          style: Fonts.smallerTextBold.copyWith(
            color: ColorStyles.white,
          ),
        ),
      ),
    );
  }
}
