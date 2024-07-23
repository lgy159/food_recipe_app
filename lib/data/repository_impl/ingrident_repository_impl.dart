import 'package:sesac_ton/data/model/ingrident.dart';

import '../../core/result.dart';
import '../data_source/recipe_data_source.dart';
import '../repository/ingrident_repository.dart';

class IngridentRepositoryImpl implements IngridentRepository {
  final RecipeDataSource recipeDataSource;

  IngridentRepositoryImpl(this.recipeDataSource);

  @override
  Future<Result<List<Ingrident>>> getIngridents() async {
    try {
      final data = await recipeDataSource.getIngridents();
      return Result.success(data);
    } catch (e) {
      return Result.error(e.toString());
    }
  }
}
