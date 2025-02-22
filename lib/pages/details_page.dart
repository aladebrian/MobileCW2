import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key, required this.recipeIndex});
  final int recipeIndex;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  List<String> ingredients = ["Chocolate and cake", "Strawberries and cake"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Details")),
      body: Column(
        children: <Widget>[
          Text("Details page"),
          Text(ingredients[widget.recipeIndex])
        ],
      ),
    );
  }
}
