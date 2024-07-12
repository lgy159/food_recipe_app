import 'package:flutter/material.dart';
import 'package:sesac_ton/core/result.dart';
import 'package:sesac_ton/data/model/saved_recipe.dart';
import 'package:sesac_ton/data/repository/recipe_repository.dart';
import 'package:sesac_ton/presentation/components/recipe_card_widget.dart';

class SavedRecipesView extends StatelessWidget {
  final RecipeRepository recipeRepository;

  const SavedRecipesView({
    super.key,
    required this.recipeRepository,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Result<List<SavedRecipe>>>(
      future: recipeRepository.getSavedRecipes(),
      builder: (
        BuildContext context,
        AsyncSnapshot<Result<List<SavedRecipe>>> snapshot,
      ) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        final recipesResult = snapshot.data!;

        switch (recipesResult) {
          case Success<List<SavedRecipe>>():
            return Expanded(
              child: ListView(
                children: recipesResult.data
                    .map((savedRecipe) =>
                        RecipeCardWidget(savedRecipe: savedRecipe))
                    .toList(),
              ),
            );
          case Error<List<SavedRecipe>>():
            return Text(recipesResult.e);
        }
      },
    );
  }
}
