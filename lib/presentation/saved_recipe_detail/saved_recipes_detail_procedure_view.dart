import 'package:flutter/material.dart';
import 'package:sesac_ton/presentation/components/procedure_item.dart';

import '../../ui/color_styles.dart';
import '../../ui/text_styles.dart';
import '../components/ingrident_item.dart';

class SavedRecipesDetailProcedureView extends StatelessWidget {
  const SavedRecipesDetailProcedureView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              'assets/recipe/tray_icon.png',
              height: 17,
              width: 17,
            ),
            const SizedBox(width: 5),
            Text(
              '1 serve',
              style: Fonts.smallerTextRegular.copyWith(
                color: ColorStyles.grey3,
              ),
            ),
            const Spacer(),
            Text(
              '10 Steps',
              style: Fonts.smallerTextRegular.copyWith(
                color: ColorStyles.grey3,
              ),
            ),
          ],
        ),
        const SizedBox(height: 13.5),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: List.generate(6, (index) {
                return const ProcedureItem();
              }),
            ),
          ),
        ),
      ],
    );
  }
}
