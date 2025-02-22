import 'package:flutter/material.dart';
import 'details_page.dart';
List<String> recipes = [
  "Chocolate Cake",
  "Carrot Cake",
  "Fresh Strawberry Cake"
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),
      body: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return TextButton(
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
