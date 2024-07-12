import '../../core/result.dart';
import '../model/saved_recipe.dart';

abstract interface class RecipeRepository {
  Future<Result<List<SavedRecipe>>> getSavedRecipes();
}
