import 'dart:ui';

import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          // logo
          Padding(padding: const EdgeInsets.only(left:80, right: 80, bottom: 80, top: 160.0),
          child: Image.asset('lib/abstract/PNG/#04.png'),)

          // we deliver groceries to your doorstep
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              "We deliver groceries at your doorstep",
              textAlign: TextAlign.center,
            style: GoogleFonts.notoSerif(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            ),
            )
          )

          const SizedBox(height: 24),

          // fresh items everyday
          Text(
            "Fresh items everyday",
            style: TextStyle(color: Colors.grey[600]),
          ),

          const Spacer(),

          //get started button
          GestureDetector(
            onTap: ()=> Navigator.pushReplacement(context, MaterialPageRoute
            (builder: (context){
              return const Homepage();
            })),
            child: Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12)
            ),
            padding: EdgeInsets.all(24),
            child: Text(
              "Get started", 
              style: TextStyle(color: Colors.white),
              ),
          )
          )

          const Spacer(),
        ]
      )
    )
  }
}