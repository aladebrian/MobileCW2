import 'package:flutter/material.dart';
import 'package:recipebook/pages/details_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> recipes = ["Chocolate Cake", "Strawberry Cake"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ElevatedButton(
            child: Text(recipes[index]),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsScreen(recipeIndex: index);
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
