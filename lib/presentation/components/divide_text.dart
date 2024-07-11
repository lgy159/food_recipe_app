import 'package:flutter/material.dart';
import 'package:sesac_ton/ui/color_styles.dart';
import 'package:sesac_ton/ui/text_styles.dart';

class DivideText extends StatelessWidget {
  final String label;
  final double topPadding;

  const DivideText({
    super.key,
    required this.label,
    required this.topPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: topPadding,
        left: 65,
        right: 65,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            child: Divider(
              height: 50,
              color: Colors.grey,
              thickness: 1.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            // Text Style/Smaller Text/Semi Bold
            child: Text(
              label,
              style: Fonts.smallerTextBold.copyWith(
                color: ColorStyles.grey4,
              ),
            ),
          ),
          const Expanded(
            child: Divider(
              height: 50,
              color: Colors.grey,
              thickness: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}
