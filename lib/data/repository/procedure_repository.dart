import 'package:sesac_ton/data/model/procedure.dart';

import '../../core/result.dart';

abstract interface class ProcedureRepository {
  Future<Result<List<Procedure>>> getProcedure();
}
