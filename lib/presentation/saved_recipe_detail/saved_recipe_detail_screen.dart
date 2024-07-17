import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sesac_ton/data/model/saved_recipe.dart';
import 'package:sesac_ton/data/repository/recipe_repository.dart';
import 'package:sesac_ton/presentation/components/recipe_card_detail_widget.dart';
import 'package:sesac_ton/presentation/saved_recipes/saved_recipes_view.dart';

import '../../ui/color_styles.dart';
import '../../ui/text_styles.dart';

class SavedRecipeDetailScreen extends StatelessWidget {
  final SavedRecipe savedRecipe;

  const SavedRecipeDetailScreen({
    super.key,
    required this.savedRecipe,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RecipeCardDetailWidget(savedRecipe: savedRecipe),
              const SizedBox(height: 10),
              SizedBox(
                width: 190,
                child: Text(
                  savedRecipe.title,
                  style: Fonts.smallTextBold.copyWith(
                    color: ColorStyles.black,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
