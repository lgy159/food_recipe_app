import 'package:flutter/material.dart';
import 'package:sesac_ton/core/result.dart';
import 'package:sesac_ton/data/repository/recipe_repository.dart';

import '../../data/model/saved_recipe.dart';

class SearchRecipesViewModel with ChangeNotifier {
  final RecipeRepository _recipeRepository;

  bool _isLoading = true;
  List<SavedRecipe> _recipes = List.empty(growable: true);

  bool get isLoading => _isLoading;

  List<SavedRecipe> get recipes => _recipes;

  SearchRecipesViewModel(this._recipeRepository) {
    _getRecipes();
  }

  Future<void> _getRecipes() async {
    _isLoading = true;
    notifyListeners();

    final result = await _recipeRepository.getRecentRecipes();
    switch (result) {
      case Success<List<SavedRecipe>>(:final data):
        _recipes = data;
        _isLoading = false;
        notifyListeners();
      case Error<List<SavedRecipe>>():
        _isLoading = true;
        notifyListeners();
    }
  }

  Future<void> searchRecipes(String title) async {
    _isLoading = true;
    notifyListeners();

    final result = await _recipeRepository.searchRecipes(title);
    switch (result) {
      case Success<List<SavedRecipe>>(:final data):
        _recipes = data;
        _isLoading = false;
        notifyListeners();
      case Error<List<SavedRecipe>>():
    }
  }
}
