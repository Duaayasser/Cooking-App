import 'package:cooking_app/Screens/welcome.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(const CookingApp() );
}

class CookingApp extends StatelessWidget {
  const CookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen() ,
    );
  }
}