import 'package:cooking_app/Commom%20Widgets/recipeWidget.dart';
import 'package:cooking_app/Models/categoryModel.dart';
import 'package:cooking_app/Models/mealModel.dart';
import 'package:cooking_app/services/appService.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryMeals extends StatefulWidget {
  final CategoryModel selectedCategory;
  const  CategoryMeals({super.key, required this.selectedCategory});

  @override
  State<CategoryMeals> createState() => _CategoryMealsState();
}

class _CategoryMealsState extends State<CategoryMeals> {
  List<MealModel> categoryMeals = [];
   @override
  void initState() {
    getMeals();
    super.initState();
  }
  Future<void> getMeals() async { 
    categoryMeals = await AppServices().getMealsByCategory(widget.selectedCategory.categoryName);
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("${widget.selectedCategory.categoryName} Meals",
      style: GoogleFonts.dangrek(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.normal))),),
          body: ListView.builder(
            itemCount: categoryMeals.length,
            itemBuilder: (context,index)=> MyRecipe(recipeModel: null, mealModel: categoryMeals[index], ))
                        );
  }
}