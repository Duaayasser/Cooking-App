import 'package:cooking_app/Models/categoryModel.dart';
import 'package:cooking_app/Widgets/categoryCardWidget.dart';
import 'package:cooking_app/services/appService.dart';
import 'package:flutter/material.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({super.key});

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  List<CategoryModel> categories = [];
  @override
  void initState() {
    getCategory();
    super.initState();
  }

  Future<void> getCategory() async {
    categories = await AppServices().getAllCategories();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 1,
      itemBuilder: (context, index) => SizedBox(
        height: 250,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) => MyCategory(
                  categoryModel: categories[index],
                )),
      ),
    );
  }
}


