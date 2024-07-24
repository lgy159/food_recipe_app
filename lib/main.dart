import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sesac_ton/data/data_source_impl/recipe_data_source_impl.dart';
import 'package:sesac_ton/data/repository/recipe_repository.dart';
import 'package:sesac_ton/data/repository_impl/recipe_repository_impl.dart';
import 'package:sesac_ton/presentation/saved_recipe_detail/saved_recipe_detail_view_model.dart';
import 'package:sesac_ton/presentation/saved_recipes/saved_recipes_view_model.dart';

import 'presentation/navigation/router.dart';

void main() async {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
