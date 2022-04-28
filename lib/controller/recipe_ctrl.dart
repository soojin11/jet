import 'package:get/get.dart';

class RecipeCtrl extends GetxController {
  static RecipeCtrl get to => Get.find();
  final RxList<String> recipes = RxList.empty(growable: true);
  final RxList<String> dbRecipes = RxList.empty(growable: true);

  Future<bool> getRecipes() async {
    try {
      recipes
          .addAll(['Recipe 1', 'Recipe 2', 'Recipe 3', 'Recipe 4', 'Recipe 5']);
      dbRecipes.value = recipes;
      return true;
    } catch (e) {
      return false;
    }
  }

  void deleteRecipe(int idx) {
    if (RecipeCtrl.to.recipes.isNotEmpty) {
      recipes.removeAt(idx);
    }
  }

  void addNewRecipe(int idx) {
    if (RecipeCtrl.to.recipes.isNotEmpty) {
      recipes.insert(idx, '${recipes[idx]}_new');
    } else {
      recipes.add('new');
    }
  }

  void cancel() {
    recipes.value = dbRecipes;
  }

  void save() {
    dbRecipes.value = recipes;
  }
}
