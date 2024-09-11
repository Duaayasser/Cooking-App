import 'package:cooking_app/Models/categoryModel.dart';
import 'package:cooking_app/Models/mealModel.dart';
import 'package:cooking_app/Models/recipdeModel.dart';
import 'package:dio/dio.dart';

class AppServices {
  final Dio dio = Dio();
  getAllCategories() async { 
   Response response = await dio.get('https://www.themealdb.com/api/json/v1/1/categories.php');
   Map<String,dynamic> categories = response.data;
   List<dynamic> categoriesList = categories["categories"];
   List<CategoryModel> myCategoryList = [];
   for(var category in categoriesList)
   {
    CategoryModel catModel = CategoryModel( categoryName: category["strCategory"], categoryImage: category["strCategoryThumb"], categoryDiscreption: category["strCategoryDescription"]);
    myCategoryList.add(catModel);
   }
  return myCategoryList;
  }
  getAllRecipies() async { 
    Response response = await dio.get('https://www.themealdb.com/api/json/v1/1/search.php?s');
    Map<String,dynamic> recipies = response.data;
    List<dynamic> recipiesList = recipies["meals"];
    List<RecipeModel> myRecipeList = [];
    for(var recipe in recipiesList )
    {
      RecipeModel myRecipe = 
      RecipeModel(
      recipeCategory: recipe["strCategory"],
       recipeID: recipe["idMeal"],
        recipeName: recipe["strMeal"], 
       recipeImage: recipe["strMealThumb"],
        recipeInstructions: recipe["strInstructions"],
         recipeArea: recipe["strArea"]);
         myRecipeList.add(myRecipe);
    }
    return myRecipeList;
  }
  getMealsByCategory(String category) async { 
    Response response = await dio.get("https://www.themealdb.com/api/json/v1/1/filter.php?c=$category");
    Map<String,dynamic> allMeals = response.data;
    List<dynamic> mealsList = allMeals["meals"];
    List<MealModel> myMealsList = [];
    for(var meal in mealsList)
    {
      MealModel myMeal = MealModel(
        
        mealName: meal["strMeal"],
         mealImage: meal["strMealThumb"],
          mealID: meal["idMeal"]);
          myMealsList.add(myMeal);
    }
    
    return myMealsList;
  }
  
}