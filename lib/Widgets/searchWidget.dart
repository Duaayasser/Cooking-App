import 'package:cooking_app/Models/mealModel.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
   const SearchView({super.key, required this.myMeal,});
   final MealModel myMeal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListTile(
          leading:CircleAvatar(backgroundImage: NetworkImage(myMeal.mealImage),
          radius: 20,) ,
          title: Text(myMeal.mealName,style:const TextStyle(color:Colors.black,
          fontSize: 15,fontWeight: FontWeight.w600)),
          ),
    );
    
  }
}