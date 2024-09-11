import 'package:cooking_app/Models/categoryModel.dart';
import 'package:cooking_app/Screens/categoryMeals.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCategory extends StatelessWidget {
  const MyCategory({super.key, required this.categoryModel,});
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryMeals(selectedCategory: categoryModel,))),
        child: Stack(
          children: [
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(categoryModel.categoryImage),
                      fit: BoxFit.fitHeight,
                      colorFilter: ColorFilter.mode(
                          Colors.grey.withOpacity(0.3), BlendMode.darken)),
                  borderRadius: BorderRadius.circular(25)),
            ),
            Positioned(
              bottom: 100,
              left: 25,
              right: 25,
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15)),
                child: Text(categoryModel.categoryName,
                    style: GoogleFonts.dangrek(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.normal))),
              ),
            ),
            Positioned(
                top: 5,
                right: 5,
                child: IconButton(
                  onPressed: () => showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            backgroundColor: Colors.white70,
                            content: Text(
                              categoryModel.categoryDiscreption,
                              style: GoogleFonts.dangrek(
                                  textStyle: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500)),
                            ),
                            title: Text(
                                categoryModel.categoryName,
                                style: GoogleFonts.dangrek(
                                    textStyle: const TextStyle(
                                        color: Colors.white, fontSize: 30))),
                          )),
                  icon: const Icon(Icons.info_outline_rounded),
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}
