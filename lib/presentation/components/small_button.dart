import 'package:flutter/material.dart';

import '../../ui/color_styles.dart';
import '../../ui/text_styles.dart';

class SmallButton extends StatefulWidget {
  final void Function() onTap;
  final String title;
  final double width;

  const SmallButton({
    super.key,
    required this.title,
    required this.onTap, required this.width,
  });

  @override
  State<SmallButton> createState() => _SmallButtonState();
}

class _SmallButtonState extends State<SmallButton> {
  Color buttonColor = ColorStyles.primary100;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          buttonColor = ColorStyles.primary80;
        });
      },
      onTapUp: (_) {
        setState(() {
          buttonColor = ColorStyles.primary100;
          widget.onTap();
        });
      },
      onTapCancel: () {
        buttonColor = ColorStyles.primary100;
        setState(() {});
      },
      child: Container(
        width: widget.width,
        height: 37,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: buttonColor,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text Style/Normal Text/Bold
              Text(
                widget.title,
                style: Fonts.normalTextBold.copyWith(
                  color: ColorStyles.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
