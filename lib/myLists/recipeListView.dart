import 'package:cooking_app/Models/recipdeModel.dart';
import 'package:cooking_app/Commom%20Widgets/recipeWidget.dart';
import 'package:cooking_app/constants/appColor.dart';
import 'package:cooking_app/services/appService.dart';
import 'package:flutter/material.dart';

class RecipeListView extends StatefulWidget {
  const RecipeListView({super.key});

  @override
  State<RecipeListView> createState() => _RecipeListViewState();
}

class _RecipeListViewState extends State<RecipeListView> {
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
    return SliverList.builder(
      itemCount: 1,
      itemBuilder: (context, index) =>
       recipes.isEmpty? Center(child: Container(
        margin: const EdgeInsets.only(top:50),
        height: 50,
        width:50,
        child: const CircularProgressIndicator(color: kMainColor,)))
            :
       SizedBox(
        height: 500,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 5,
            itemBuilder: (context, index) =>
            MyRecipe(recipeModel: recipes[index], mealModel: null, )
                ),
      ),
    );
  }
}


