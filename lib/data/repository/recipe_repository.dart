import '../../core/result.dart';
import '../model/saved_recipe.dart';

abstract interface class RecipeRepository {
  Future<Result<List<SavedRecipe>>> getSavedRecipes();
  Future<Result<List<SavedRecipe>>> getRecentRecipes();
  Future<Result<List<SavedRecipe>>> searchRecipes(String title);
}
