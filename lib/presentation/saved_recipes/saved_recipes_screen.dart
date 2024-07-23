import 'package:flutter/material.dart';
import 'package:sesac_ton/presentation/saved_recipes/saved_recipes_view.dart';

import '../../ui/color_styles.dart';
import '../../ui/text_styles.dart';

class SavedRecipesScreen extends StatelessWidget {
  const SavedRecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Saved recipes',
            style: Fonts.mediumTextBold.copyWith(
              color: ColorStyles.black2,
            ),
          ),
        ),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SavedRecipesView(),
        ],
      ),
    );
  }
}
