import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sesac_ton/presentation/components/recipe_card_widget.dart';
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
