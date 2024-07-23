import 'package:flutter/material.dart';
import 'package:sesac_ton/data/model/saved_recipe.dart';
import 'package:sesac_ton/presentation/components/creator_profile.dart';
import 'package:sesac_ton/presentation/components/recipe_card_detail_widget.dart';
import 'package:sesac_ton/presentation/saved_recipe_detail/saved_recipes_detail_ingrident_view.dart';
import 'package:sesac_ton/presentation/saved_recipe_detail/saved_recipes_detail_procedure_view.dart';

import '../../ui/color_styles.dart';
import '../../ui/text_styles.dart';

class SavedRecipeDetailScreen extends StatefulWidget {
  final SavedRecipe savedRecipe;

  const SavedRecipeDetailScreen({
    super.key,
    required this.savedRecipe,
  });

  @override
  State<SavedRecipeDetailScreen> createState() =>
      _SavedRecipeDetailScreenState();
}

class _SavedRecipeDetailScreenState extends State<SavedRecipeDetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: 'RecipeCard',
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RecipeCardDetailWidget(savedRecipe: widget.savedRecipe),
                const SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(
                      width: 190,
                      child: Text(
                        widget.savedRecipe.title,
                        style: Fonts.smallTextBold.copyWith(
                          color: ColorStyles.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    Text(
                      '(13k Reviews)',
                      style: Fonts.smallTextRegular.copyWith(
                        color: ColorStyles.grey3,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                CreatorProfile(onTap: () {}),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  height: 33,
                  child: TabBar(
                    controller: _tabController,
                    tabs: const [
                      Tab(text: 'Ingredient'),
                      Tab(text: 'Procedure'),
                    ],
                    dividerHeight: 0,
                    labelColor: Colors.white,
                    unselectedLabelColor: ColorStyles.primary100,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: ColorStyles.primary100,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      SavedRecipesDetailIngridentView(),
                      SavedRecipesDetailProcedureView(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
