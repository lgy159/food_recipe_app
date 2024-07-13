import 'package:flutter/material.dart';
import 'package:sesac_ton/core/result.dart';
import 'package:sesac_ton/data/data_source/recipe_data_source.dart';
import 'package:sesac_ton/data/data_source_impl/recipe_data_source.dart';
import 'package:sesac_ton/data/repository/recipe_repository.dart';
import 'package:sesac_ton/data/repository_impl/recipe_repository_impl.dart';

import '../../data/model/saved_recipe.dart';

class SavedRecipesViewModel with ChangeNotifier {
  late final RecipeRepository _recipeRepository;
  late final RecipeDataSource _recipeDataSource;
  List<SavedRecipe> _recipes = List.empty(growable: true);

  List<SavedRecipe> get recipes => _recipes;

  SavedRecipesViewModel() {
    _recipeDataSource = RecipeDataSourceImpl();
    _recipeRepository = RecipeRepositoryImpl(_recipeDataSource);
    _getRecipes();
  }

  Future<void> _getRecipes() async {
    final result = await _recipeRepository.getSavedRecipes();
    switch (result) {
      case Success<List<SavedRecipe>>(:final data):
        _recipes = data;
        print(data);
        notifyListeners();
      case Error<List<SavedRecipe>>(:final e):
    }
  }
}
