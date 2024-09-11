
class MealModel {
  final String mealName;
  final String mealImage;
  final String mealID;
   String? mealCategory;
   String? mealInstructions;
  MealModel({
    required this.mealName,
    required this.mealImage,
    required this.mealID,
    this.mealCategory,
    this.mealInstructions,
  });
}