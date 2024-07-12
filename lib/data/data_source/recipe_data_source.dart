
import '../model/saved_recipe.dart';

abstract interface class RecipeDataSource {
  Future<List<SavedRecipe>> getSavedRecipes();
}
