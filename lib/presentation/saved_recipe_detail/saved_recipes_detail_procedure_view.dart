import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sesac_ton/presentation/components/procedure_item.dart';
import 'package:sesac_ton/presentation/saved_recipe_detail/saved_recipe_detail_view_model.dart';

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
        Consumer<SavedRecipesDetailViewModel>(
          builder: (context, viewmodel, child) {
            if (viewmodel.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            final procedures = viewmodel.procedures;
            return Expanded(
              child: ListView.builder(
                itemCount: procedures.length,
                itemBuilder: (context, index) {
                  return ProcedureItem(
                    procedure: procedures[index],
                    index: index,
                  );
                },
              ),
            );
          },
        )
      ],
    );
  }
}
