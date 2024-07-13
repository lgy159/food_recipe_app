import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sesac_ton/core/result.dart';
import 'package:sesac_ton/data/model/saved_recipe.dart';
import 'package:sesac_ton/data/repository/recipe_repository.dart';
import 'package:sesac_ton/presentation/components/recipe_card_widget.dart';
import 'package:sesac_ton/presentation/saved_recipes/saved_recipes_view_model.dart';

class SavedRecipesView extends StatefulWidget {
  final RecipeRepository recipeRepository;

  const SavedRecipesView({
    super.key,
    required this.recipeRepository,
  });

  @override
  State<SavedRecipesView> createState() => _SavedRecipesViewState();
}

class _SavedRecipesViewState extends State<SavedRecipesView> {
  late List<SavedRecipe> recipes;

  Widget useFutureBuilder() {
    return FutureBuilder<Result<List<SavedRecipe>>>(
      future: widget.recipeRepository.getSavedRecipes(),
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

  Widget useViewmodel() {
    return Consumer<SavedRecipesViewModel>(
      builder: (context, provider, child) {
        if (provider.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        recipes = provider.recipes;
        return Expanded(
          child: ListView.builder(
            itemCount: recipes.length,
            itemBuilder: (context, index) {

              return RecipeCardWidget(savedRecipe: recipes[index]);
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
