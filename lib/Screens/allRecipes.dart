// ignore: file_names
import 'package:cooking_app/Models/recipdeModel.dart';
import 'package:cooking_app/Commom%20Widgets/recipeWidget.dart';
import 'package:cooking_app/services/appService.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllRecipes extends StatefulWidget {
  const AllRecipes({super.key});

  @override
  State<AllRecipes> createState() => _AllRecipesState();
}

class _AllRecipesState extends State<AllRecipes> {
  List<RecipeModel> recipes = [];
  @override
  void initState() {
    getRecipe();
    super.initState();
  }

  Future<void> getRecipe() async {
    recipes = await AppServices().getAllRecipies();
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold( 
      appBar: AppBar(
      title:  Text("All recipes",
      style: GoogleFonts.dangrek(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.normal))), 
      centerTitle: true,),
      body: ListView.builder(
        itemCount: recipes.length ,
        itemBuilder: (context,index)=>  MyRecipe(recipeModel: recipes[index], mealModel: null,))));
  }
}