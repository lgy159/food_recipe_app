import '../../core/result.dart';
import '../data_source/recipe_data_source.dart';
import '../model/saved_recipe.dart';
import '../repository/recipe_repository.dart';

class RecipeRepositoryImpl implements RecipeRepository {
  final RecipeDataSource recipeDataSource;

  RecipeRepositoryImpl(this.recipeDataSource);

  @override
  Future<Result<List<SavedRecipe>>> getSavedRecipes() async {
    try {
      final data = await recipeDataSource.getSavedRecipes();
      return Result.success(data);
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<SavedRecipe>>> getRecentRecipes() async {
    try {
      final data = await recipeDataSource.getSavedRecipes();
      return Result.success(data);
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<SavedRecipe>>> searchRecipes(String title) async {
    try {
      final data = await recipeDataSource.getSavedRecipes();
      final result = data.where((recipe) => recipe.title.contains(title)).toList();

      return Result.success(result);
    } catch (e) {
      return Result.error(e.toString());
    }
  }
}
