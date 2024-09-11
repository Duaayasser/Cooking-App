import 'package:cooking_app/Models/mealModel.dart';
import 'package:cooking_app/Models/recipdeModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeDetails extends StatelessWidget {
  const RecipeDetails({super.key, required this.myRecipe,required this.myMeal, });
  final RecipeModel? myRecipe;
  final MealModel? myMeal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(children: [
        Stack(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: myRecipe != null?
                       NetworkImage(myRecipe!.recipeImage)
                       : NetworkImage(myMeal!.mealImage)
                     ,
                      fit: BoxFit.cover)),
            ),
            Positioned(
                top: 20,
                left: 10,
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.white,
                  iconSize: 30,
                )),
            Positioned(
                bottom: 0,
                child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.topLeft,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40, left: 40),
                      child: Text(
                        myRecipe != null? myRecipe!.recipeName
                        :myMeal!.mealName,
                          style: GoogleFonts.dangrek(
                              textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontWeight: FontWeight.normal))),
                    ))),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text("Instructions: ",
              style: GoogleFonts.basic(
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold))),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text( myRecipe != null?
            myRecipe!.recipeInstructions
            :myMeal!.mealInstructions!,
              style:  TextStyle(
                  color: Colors.grey[800],
                  fontSize: 30,
                  fontWeight: FontWeight.w500)),
        )
      ]),
    );
  }
}
