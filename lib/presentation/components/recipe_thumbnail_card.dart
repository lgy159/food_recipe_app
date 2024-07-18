import 'package:flutter/material.dart';

import '../../data/model/saved_recipe.dart';
import '../../ui/color_styles.dart';
import '../../ui/text_styles.dart';

class RecipeThumbnailCard extends StatelessWidget {
  final void Function() onTap;
  final SavedRecipe savedRecipe;

  const RecipeThumbnailCard({super.key, required this.onTap, required this.savedRecipe,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 150,
        width: 150,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Stack(
            children: [
              Image.network(
                savedRecipe.imageUrl,
                width: double.infinity,
                height: 160,
                fit: BoxFit.cover,
              ),
              Container(
                width: double.infinity,
                height: 160,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black.withOpacity(1), Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: ColorStyles.secondary20,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.star, color: Colors.orange, size: 10),
                      const SizedBox(width: 3),
                      Text(
                        savedRecipe.rate.toString(),
                        style: Fonts.smallerTextRegular,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 10.0,
                left: 10.0,
                right: 10.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 130,
                            child: Text(
                              savedRecipe.title,
                              style: Fonts.smallerTextBold.copyWith(
                                color: ColorStyles.white,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            savedRecipe.subTitle,
                            style: Fonts.smallerTextRegular.copyWith(
                              color: ColorStyles.grey4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
