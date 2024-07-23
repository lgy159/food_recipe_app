import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sesac_ton/data/data_source_impl/recipe_data_source_impl.dart';
import 'package:sesac_ton/data/repository/recipe_repository.dart';
import 'package:sesac_ton/data/repository_impl/recipe_repository_impl.dart';
import 'package:sesac_ton/presentation/saved_recipe_detail/saved_recipe_detail_view_model.dart';
import 'package:sesac_ton/presentation/saved_recipes/saved_recipes_view_model.dart';

import 'presentation/navigation/router.dart';

void main() async {
  final RecipeDataSourceImpl dataSource = RecipeDataSourceImpl();
  final RecipeRepositoryImpl recipeRepository =
      RecipeRepositoryImpl(dataSource);

  runApp(
    MyApp(
      recipeRepository: recipeRepository,
    ),
  );
}

class MyApp extends StatelessWidget {
  final RecipeRepository recipeRepository;

  const MyApp({super.key, required this.recipeRepository});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SavedRecipesViewModel(recipeRepository),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: router,
      ),
    );
  }
}
