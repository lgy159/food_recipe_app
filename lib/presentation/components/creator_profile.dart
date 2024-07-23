import 'package:flutter/material.dart';

import '../../ui/color_styles.dart';
import '../../ui/text_styles.dart';

class CreatorProfile extends StatelessWidget {
  final void Function() onTap;

  const CreatorProfile({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100.0),
          child: Image.asset('assets/profile.png',
            height: 40,
            width: 40,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          children: [
            Text(
              'Laura wilson',
              style: Fonts.smallTextBold.copyWith(
                color: ColorStyles.black2,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.location_pin,
                  color: ColorStyles.primary80,
                ),
                Text(
                  'Lagos, Nigeria',
                  style: Fonts.smallerTextRegular.copyWith(
                    color: ColorStyles.grey3,
                  ),
                ),
              ],
            )
          ],
        ),
        const Spacer(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorStyles.primary100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () => onTap.call(),
          child: Text(
            'Follow',
            style: Fonts.smallerTextBold.copyWith(
              color: ColorStyles.white,
            ),
          ),
        ),
      ],
    );
  }
}
