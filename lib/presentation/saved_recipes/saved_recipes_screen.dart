import 'package:flutter/material.dart';
import 'package:sesac_ton/data/repository/recipe_repository.dart';
import 'package:sesac_ton/presentation/saved_recipes/saved_recipes_view.dart';
import 'package:sesac_ton/presentation/saved_recipes/saved_recipes_view_model.dart';

import '../../ui/color_styles.dart';
import '../../ui/text_styles.dart';

class SavedRecipesScreen extends StatelessWidget {
  final SavedRecipesViewModel savedRecipesViewModel;

  const SavedRecipesScreen({super.key, required this.savedRecipesViewModel});

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SavedRecipesView(
            savedRecipesViewModel: savedRecipesViewModel,
          ),
        ],
      ),
    );
  }
}
