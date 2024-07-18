import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sesac_ton/data/model/saved_recipe.dart';
import 'package:sesac_ton/presentation/components/recipe_thumbnail_card.dart';
import 'package:sesac_ton/presentation/components/search_input_widget.dart';

import '../../ui/color_styles.dart';
import '../../ui/text_styles.dart';

class SearchRecipeScreen extends StatelessWidget {
  const SearchRecipeScreen({super.key});

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
              const SearchInputWidget(),
              const SizedBox(height: 20),
              Text(
                'Recent Search',
                //Text Style/Normal Text/Bold
                style: Fonts.normalTextBold.copyWith(
                  color: ColorStyles.black,
                ),
              ),
              const SizedBox(height: 10),
              Flexible(
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 1, // 카드 비율을 조정합니다.
                  ),
                  itemCount: 8, // 예시로 8개의 아이템
                  itemBuilder: (context, index) {
                    return RecipeThumbnailCard(
                      onTap: () {},
                      savedRecipe: const SavedRecipe(
                        id: 1,
                        title: 'traditional spare ribs baked',
                        subTitle: 'by chef john',
                        rate: 4.0,
                        minute: 1,
                        imageUrl:
                        'https://ppss.kr/wp-content/uploads/2017/11/20171108024157592_IBYNSQCZ.jpg',
                      ),
                    ); // 예시 레시피 카드 위젯
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
