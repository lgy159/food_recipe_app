import 'package:flutter/material.dart';
import 'package:sesac_ton/data/data_source_impl/recipe_data_source.dart';
import 'package:sesac_ton/data/repository/recipe_repository.dart';
import 'package:sesac_ton/data/repository_impl/recipe_repository_impl.dart';
import 'package:sesac_ton/presentation/navigation/navigation.dart';

void main() async {
  final RecipeDataSourceImpl dataSource = RecipeDataSourceImpl();
  final RecipeRepositoryImpl recipeRepository =
      RecipeRepositoryImpl(dataSource);

  runApp(MyApp(
    recipeRepository: recipeRepository,
  ));
}

class MyApp extends StatelessWidget {
  final RecipeRepository recipeRepository;

  const MyApp({super.key, required this.recipeRepository});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        // body: SavedRecipesScreen(
        //   recipeRepository: recipeRepository,
        // ),
        body: Navigation(recipeRepository: recipeRepository,),
      ),
    );
  }
}
