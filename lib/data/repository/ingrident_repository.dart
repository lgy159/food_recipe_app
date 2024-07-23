import 'package:sesac_ton/data/model/ingrident.dart';

import '../../core/result.dart';

abstract interface class IngridentRepository {
  Future<Result<List<Ingrident>>> getIngridents();
}
