class RecipeModel {
  final String recipeName;
  final String recipeID;
  final String recipeCategory;
  final String recipeArea;
  final String recipeInstructions;
  final String recipeImage;

  RecipeModel({required this.recipeCategory, required this.recipeArea, required this.recipeInstructions, required this.recipeImage, required this.recipeName, required this.recipeID});
}