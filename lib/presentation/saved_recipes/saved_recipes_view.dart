import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:sesac_ton/core/result.dart';
import 'package:sesac_ton/data/model/saved_recipe.dart';
import 'package:sesac_ton/data/repository/recipe_repository.dart';
import 'package:sesac_ton/presentation/components/recipe_card_widget.dart';
import 'package:sesac_ton/presentation/saved_recipe_detail/saved_recipe_detail_screen.dart';
import 'package:sesac_ton/presentation/saved_recipes/saved_recipes_view_model.dart';

class SavedRecipesView extends StatelessWidget {
  final SavedRecipesViewModel savedRecipesViewModel;

  const SavedRecipesView({
    super.key,
    required this.savedRecipesViewModel,
  });

  Widget useViewmodel() {
    return ListenableBuilder(
      listenable: savedRecipesViewModel,
      builder: (context, child) {
        if (savedRecipesViewModel.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        final recipes = savedRecipesViewModel.recipes;
        return Expanded(
          child: ListView.builder(
            itemCount: recipes.length,
            itemBuilder: (context, index) {
              return Hero(
                tag: 'RecipeCard',
                child: RecipeCardWidget(
                  savedRecipe: recipes[index],
                  onTap: () {
                    context.push('/saved_recipes/detail',
                        extra: recipes[index]);
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return useViewmodel();
  }
}
