
import 'package:sesac_ton/data/model/ingrident.dart';
import 'package:sesac_ton/data/model/procedure.dart';

import '../model/saved_recipe.dart';

abstract interface class RecipeDataSource {
  Future<List<SavedRecipe>> getSavedRecipes();
  Future<List<Ingrident>> getIngridents();
  Future<List<Procedure>> getProcedures();
}
