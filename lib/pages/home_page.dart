import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 48,)

          // good morning 
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal:24.0),
            child: Text(
            'Good Morning'
          )
          )

          // Let's order fresh items for you
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              "Let's order fresh items for you"
              style: GoogleFonts.notoSerif(
                fontSize:36,
                fontWeight: FontWeight.bold,
              )
            ),
            )


          const SizedBox(height: 24,)

          // divider
          Padding(
            padding: EdgeInsets.symmetric(horizontal:8.0),
            child: Divider(
              thickness: 4,
            ),
          )

          // freshitems + grid
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal:24.0)
            child: Text("Fresh Items", 
            style: TextStyle(fontSize: 16),
            )
          )

          Expanded(child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
            itemBuilder: (context, index){
              return GroceryItemTile();
            }
          ) )
        ],
      )
    );
    )

  }
}