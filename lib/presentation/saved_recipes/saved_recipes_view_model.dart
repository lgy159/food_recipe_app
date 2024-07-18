import 'package:flutter/material.dart';
import 'package:sesac_ton/core/result.dart';
import 'package:sesac_ton/data/data_source/recipe_data_source.dart';
import 'package:sesac_ton/data/data_source_impl/recipe_data_source.dart';
import 'package:sesac_ton/data/repository/recipe_repository.dart';
import 'package:sesac_ton/data/repository_impl/recipe_repository_impl.dart';

import '../../data/model/saved_recipe.dart';

class SavedRecipesViewModel with ChangeNotifier {
  final RecipeRepository _recipeRepository;

  bool _isLoading = true;
  List<SavedRecipe> _recipes = List.empty(growable: true);

  bool get isLoading => _isLoading;

  List<SavedRecipe> get recipes => _recipes;

  SavedRecipesViewModel(this._recipeRepository) {
    _getRecipes();
  }

  Future<void> _getRecipes() async {
    _isLoading = true;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 2)); // 예시: 2초 대기

    final result = await _recipeRepository.getSavedRecipes();
    switch (result) {
      case Success<List<SavedRecipe>>(:final data):
        _recipes = data;
        print(data);
        _isLoading = false;
        notifyListeners();
      case Error<List<SavedRecipe>>(:final e):
    }
  }
}
