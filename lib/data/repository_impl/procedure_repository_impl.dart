import 'package:sesac_ton/data/model/procedure.dart';

import '../../core/result.dart';
import '../data_source/recipe_data_source.dart';
import '../repository/procedure_repository.dart';

class ProcedureRepositoryImpl implements ProcedureRepository {
  final RecipeDataSource recipeDataSource;

  ProcedureRepositoryImpl(this.recipeDataSource);

  @override
  Future<Result<List<Procedure>>> getProcedure() async {
    try {
      final data = await recipeDataSource.getProcedures();
      return Result.success(data);
    } catch (e) {
      return Result.error(e.toString());
    }
  }
}
