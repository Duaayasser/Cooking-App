import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text('''What would you
like to Cook?''',
                style: GoogleFonts.dangrek(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 50,
                        fontWeight: FontWeight.normal))),
          ),
          
          Container(
            alignment: Alignment.topLeft,
            
            child: Text('All categories',
                style: GoogleFonts.dangrek(
                    textStyle: const TextStyle(
                        color: Colors.black87,
                        fontSize: 30,
                        fontWeight: FontWeight.normal))),
          ),
           
        ],
      ),
    );
  }
}
