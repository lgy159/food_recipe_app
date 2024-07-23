import 'package:flutter/material.dart';
import 'package:sesac_ton/core/result.dart';
import 'package:sesac_ton/data/model/ingrident.dart';
import 'package:sesac_ton/data/model/procedure.dart';
import 'package:sesac_ton/data/repository/ingrident_repository.dart';
import 'package:sesac_ton/data/repository/procedure_repository.dart';
import 'package:sesac_ton/data/repository/recipe_repository.dart';

import '../../data/model/saved_recipe.dart';

class SavedRecipesDetailViewModel with ChangeNotifier {
  final IngridentRepository _ingridentRepository;
  final ProcedureRepository _procedureRepository;

  bool _isLoading = true;
  List<Ingrident> _ingridents = List.empty(growable: true);
  List<Procedure> _procedures = List.empty(growable: true);

  List<Ingrident> get ingridents => _ingridents;

  List<Procedure> get procedures => _procedures;

  bool get isLoading => _isLoading;

  SavedRecipesDetailViewModel(
      this._ingridentRepository, this._procedureRepository) {
    _getIngredients();
    _getProcedures();
  }

  Future<void> _getIngredients() async {
    _isLoading = true;
    notifyListeners();

    final result = await _ingridentRepository.getIngridents();
    switch (result) {
      case Success<List<Ingrident>>(:final data):
        _ingridents = data;
        _isLoading = false;
        notifyListeners();
      case Error<List<Ingrident>>():
        _isLoading = true;
        notifyListeners();
    }
  }

  Future<void> _getProcedures() async {
    _isLoading = true;
    notifyListeners();

    final result = await _procedureRepository.getProcedure();
    switch (result) {
      case Success<List<Procedure>>(:final data):
        _procedures = data;
        _isLoading = false;
        notifyListeners();
      case Error<List<Procedure>>():
        _isLoading = true;
        notifyListeners();
    }
  }
}
