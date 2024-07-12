import 'package:flutter/material.dart';

import '../../data/model/saved_recipe.dart';
import '../../ui/color_styles.dart';
import '../../ui/text_styles.dart';

class RecipeCardWidget extends StatelessWidget {
  final SavedRecipe savedRecipe;

  const RecipeCardWidget({super.key, required this.savedRecipe});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Stack(
            children: [
              Image.network(
                savedRecipe.imageUrl,
                width: double.infinity,
                height: 150,
                fit: BoxFit.cover,
              ),
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black.withOpacity(0.7), Colors.transparent],
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
                            width: 190,
                            child: Text(
                              savedRecipe.title,
                              style: Fonts.smallTextBold.copyWith(
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
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(
                          Icons.timer_outlined,
                          color: Colors.white,
                          size: 17,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${savedRecipe.minute} min',
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(width: 16),
                        Container(
                          alignment: Alignment.center,
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100.0),
                            child: const Image(
                              image: AssetImage('assets/inactive.png'),
                              width: 16,
                              height: 16,
                            ),
                          ),
                        )
                      ],
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
