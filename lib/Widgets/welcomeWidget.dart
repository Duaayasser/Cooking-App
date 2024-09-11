import 'package:cooking_app/Screens/home.dart';
import 'package:cooking_app/Screens/loginScreen.dart';
import 'package:cooking_app/constants/appColor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreenBody extends StatelessWidget {
  const WelcomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 40, right: 10, left: 10,bottom: 10),
      child: Column(
        children: [
          Container(
            height: 430,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/Images/chef-cooking.jpg"),
                  fit: BoxFit.fitHeight,
                ),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              children: [
                 Container(
                  alignment: Alignment.topLeft,
                   child: Text(
                          "It's",style: GoogleFonts.dangrek(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 50,
                              fontWeight: FontWeight.normal)),
                        ),
                 ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Cooking",style: GoogleFonts.dangrek(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 50,
                              fontWeight: FontWeight.normal)),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Time!",style: GoogleFonts.dangrek(
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 50,
                              fontWeight: FontWeight.normal)),
                        ),
                      ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(100, 70),
                        backgroundColor: kMainColor,
                        alignment: Alignment.centerLeft),
                    child: Text("Get Started",
                        style: GoogleFonts.dangrek(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.normal))),
                    onPressed: () { 
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>  RegisterScreen()));
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}