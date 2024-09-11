import 'package:cooking_app/Widgets/welcomeWidget.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: WelcomeScreenBody()
    );
  }
}
