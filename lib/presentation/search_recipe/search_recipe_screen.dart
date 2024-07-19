import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sesac_ton/data/model/saved_recipe.dart';
import 'package:sesac_ton/presentation/components/recipe_thumbnail_card.dart';
import 'package:sesac_ton/presentation/search_recipe/search_recipes_view_model.dart';

import '../../ui/color_styles.dart';
import '../../ui/text_styles.dart';
import '../components/search_input_widget.dart';

class SearchRecipeScreen extends StatelessWidget {
  final SearchRecipesViewModel searchRecipesViewModel;

  const SearchRecipeScreen({
    super.key,
    required this.searchRecipesViewModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.go('/home');
            },
          ),
        ),
        centerTitle: true,
        title: Text(
          'Search recipes',
          style: Fonts.mediumTextBold.copyWith(
            color: ColorStyles.black2,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchInputWidget(
                onChanged: (text) {
                  searchRecipesViewModel.searchRecipes(text);
                },
              ),
              const SizedBox(height: 20),
              Text(
                'Recent Search',
                style: Fonts.normalTextBold.copyWith(
                  color: ColorStyles.black,
                ),
              ),
              const SizedBox(height: 10),
              ListenableBuilder(
                listenable: searchRecipesViewModel,
                builder: (context, child) {
                  if (searchRecipesViewModel.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  final recipes = searchRecipesViewModel.recipes;
                  return Flexible(
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                      ),
                      itemCount: recipes.length,
                      itemBuilder: (context, index) {
                        return RecipeThumbnailCard(
                          onTap: () {},
                          savedRecipe: recipes[index],
                        );
                      },
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
