import 'package:flutter/material.dart';
import 'package:sesac_ton/ui/color_styles.dart';
import 'package:sesac_ton/ui/text_styles.dart';

class ProcedureItem extends StatelessWidget {
  const ProcedureItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorStyles.grey4,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Step 1',
                style: Fonts.smallerTextBold.copyWith(
                  color: ColorStyles.black2,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'Lorem Ipsum tempor incididunt ut labore et dolore,in voluptate velit esse cillum dolore eu fugiat nulla pariatur?',
                style: Fonts.smallerTextRegular.copyWith(
                  color: ColorStyles.grey3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
