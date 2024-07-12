import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_recipe.freezed.dart';

part 'saved_recipe.g.dart';

@freezed
class SavedRecipe with _$SavedRecipe {
  const factory SavedRecipe({
    required int id,
    required String title,
    required String subTitle,
    required double rate,
    required int minute,
    required String imageUrl,
  }) = _SavedRecipe;

  factory SavedRecipe.fromJson(Map<String, Object?> json) =>
      _$SavedRecipeFromJson(json);
}
