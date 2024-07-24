import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:sesac_ton/presentation/components/recipe_thumbnail_card.dart';
import 'package:sesac_ton/presentation/search_recipe/search_recipes_view_model.dart';

import '../../ui/color_styles.dart';
import '../../ui/text_styles.dart';
import '../components/search_input_widget.dart';

class SearchRecipeScreen extends StatelessWidget {
  const SearchRecipeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SearchRecipesViewModel>();
    final recipes = viewModel.recipes;
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
                  viewModel.searchRecipes(text);
                },
              ),
              const SizedBox(height: 20),
              Text(
                'Recent Search',
                style: Fonts.normalTextBold.copyWith(
                  color: ColorStyles.black,
                ),
              ),
              if (viewModel.isLoading)
                const Center(child: CircularProgressIndicator()),
              Flexible(
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
