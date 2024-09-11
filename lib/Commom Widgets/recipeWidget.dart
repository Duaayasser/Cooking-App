import 'package:cooking_app/Models/mealModel.dart';
import 'package:cooking_app/Models/recipdeModel.dart';
import 'package:cooking_app/Commom%20Widgets/recipeDetails.dart';
import 'package:flutter/material.dart';

class MyRecipe extends StatelessWidget {
  
  const MyRecipe({super.key, required this.recipeModel, required this.mealModel, });
  final RecipeModel? recipeModel;
  final MealModel? mealModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: ()=> recipeModel != null?
         Navigator.of(context).push(MaterialPageRoute(builder:(context)=> RecipeDetails(myRecipe: recipeModel!, myMeal: null,)))
         :  showDialog(context: context, builder: (context) =>
         const AlertDialog(content: Text("We don't have instructions for this meal right now!",
         style: TextStyle(fontWeight: FontWeight.w500)),))
        ,
        child: Container( 
          height: 150,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(30)),
          child: Row(
              children: [ 
              Expanded(
                flex: 1,
                child: Container(
                height:200,width: 150,
                decoration: BoxDecoration(
                image: DecorationImage(
                  image: recipeModel != null
                  ? NetworkImage(recipeModel!.recipeImage)
                  : NetworkImage(mealModel!.mealImage),
                fit: BoxFit.fill,),
                borderRadius: BorderRadius.circular(20)
                ),),
              ),
              const SizedBox(width: 10,),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                  Text(recipeModel != null?recipeModel!.recipeName: mealModel!.mealName
                  ,style: 
                                const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600)),
                                    Text(
                                      recipeModel != null ? recipeModel!.recipeArea
                                      : '',
                                       style:  TextStyle(
                                    color: Colors.grey[800],
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500))
                ],),
              )
            ],),
          
        ),
      ),
    );
  }
}