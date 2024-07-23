
import '../data_source/recipe_data_source.dart';
import '../model/saved_recipe.dart';

class RecipeDataSourceImpl implements RecipeDataSource {
  @override
  Future<List<SavedRecipe>> getSavedRecipes() async {
    return [
      const SavedRecipe(
        id: 1,
        title: 'Traditional spare ribs baked',
        subTitle: 'By Chef John',
        rate: 4.0,
        minute: 20,
        imageUrl:
            'https://ppss.kr/wp-content/uploads/2017/11/20171108024157592_IBYNSQCZ.jpg',
      ),
      const SavedRecipe(
        id: 2,
        title: 'spice roasted chicken  with flavored rice',
        subTitle: 'By Mark Kelvin',
        rate: 3.0,
        minute: 20,
        imageUrl:
        'https://ppss.kr/wp-content/uploads/2017/11/20171108024157592_IBYNSQCZ.jpg',
      ),
      const SavedRecipe(
        id: 3,
        title: 'Traditional spare ribs baked',
        subTitle: 'By Spicy Nelly',
        rate: 3.5,
        minute: 40,
        imageUrl:
        'https://ppss.kr/wp-content/uploads/2017/11/20171108024157592_IBYNSQCZ.jpg',
      ),
      const SavedRecipe(
        id: 4,
        title: 'Lamb chops with fruity',
        subTitle: 'By Chef John',
        rate: 2.5,
        minute: 60,
        imageUrl:
        'https://ppss.kr/wp-content/uploads/2017/11/20171108024157592_IBYNSQCZ.jpg',
      ),
      const SavedRecipe(
        id: 4,
        title: 'Lamb chops with fruity',
        subTitle: 'By Chef John',
        rate: 2.5,
        minute: 60,
        imageUrl:
        'https://ppss.kr/wp-content/uploads/2017/11/20171108024157592_IBYNSQCZ.jpg',
      ),
      const SavedRecipe(
        id: 4,
        title: 'Lamb chops with fruity',
        subTitle: 'By Chef John',
        rate: 2.5,
        minute: 60,
        imageUrl:
        'https://ppss.kr/wp-content/uploads/2017/11/20171108024157592_IBYNSQCZ.jpg',
      ),

    ];
  }
}
