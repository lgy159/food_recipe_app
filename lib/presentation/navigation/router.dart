import 'package:go_router/go_router.dart';
import 'package:sesac_ton/data/data_source_impl/recipe_data_source.dart';
import 'package:sesac_ton/data/model/saved_recipe.dart';
import 'package:sesac_ton/data/repository_impl/recipe_repository_impl.dart';
import 'package:sesac_ton/presentation/home/home_screen.dart';
import 'package:sesac_ton/presentation/profile/profile_screen.dart';
import 'package:sesac_ton/presentation/saved_recipe_detail/saved_recipe_detail_screen.dart';
import 'package:sesac_ton/presentation/saved_recipes/saved_recipes_screen.dart';
import 'package:sesac_ton/presentation/saved_recipes/saved_recipes_view_model.dart';
import 'package:sesac_ton/presentation/search_recipe/search_recipe_screen.dart';
import 'package:sesac_ton/presentation/search_recipe/search_recipes_view_model.dart';
import 'package:sesac_ton/presentation/sign_in/sing_in_screen.dart';
import 'package:sesac_ton/presentation/sing_up/sing_up_screen.dart';
import 'package:sesac_ton/presentation/splash/splash_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SingUpScreen(),
    ),
    GoRoute(
      path: '/sing_up',
      builder: (context, state) => const SingUpScreen(),
    ),
    GoRoute(
      path: '/sing_in',
      builder: (context, state) => const SingInScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/saved_recipes',
      builder: (context, state) {
        final recipeRepositoryImpl =
            RecipeRepositoryImpl(RecipeDataSourceImpl());
        final savedRecipesViewModel =
            SavedRecipesViewModel(recipeRepositoryImpl);
        return SavedRecipesScreen(
          savedRecipesViewModel: savedRecipesViewModel,
        );
      },
    ),
    GoRoute(
      path: '/search_recipe',
      builder: (context, state) {
        final recipeRepositoryImpl =
            RecipeRepositoryImpl(RecipeDataSourceImpl());
        final searchRecipeViewModel =
            SearchRecipesViewModel(recipeRepositoryImpl);
        return SearchRecipeScreen(
          searchRecipesViewModel: searchRecipeViewModel,
        );
      },
    ),
    GoRoute(
        path: '/saved_recipes/detail',
        builder: (context, state) {
          final savedRecipe = state.extra as SavedRecipe;
          return SavedRecipeDetailScreen(savedRecipe: savedRecipe);
        }),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
  ],
);
