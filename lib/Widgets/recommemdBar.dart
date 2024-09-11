import 'package:cooking_app/Screens/allRecipes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [ 
                Text("Recommended",style: GoogleFonts.dangrek(
                      textStyle: const TextStyle(
                          color: Colors.black87,
                          fontSize: 30,
                          fontWeight: FontWeight.normal))),
                  TextButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>  const AllRecipes( ))),
                   child: Text('View all', style: GoogleFonts.dangrek(
                      textStyle: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.normal))),
                          )
              ],),
    );
          
  }
}