import 'package:cooking_app/Widgets/homeWidget.dart';
import 'package:cooking_app/Widgets/recommemdBar.dart';
import 'package:cooking_app/myLists/categoryListView.dart';
import 'package:cooking_app/myLists/recipeListView.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            SliverToBoxAdapter(child: HomeBody()),
            SliverToBoxAdapter(child: SizedBox(height: 10)),
            CategoryListView(),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(child:MyTitle() ),
            //SliverToBoxAdapter(child: SizedBox(height:20)),
            RecipeListView(),
          
          ],
        ));
  }
}
