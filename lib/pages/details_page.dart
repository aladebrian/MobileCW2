import 'package:flutter/material.dart';
import 'home_page.dart' as h;

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key, required this.recipeIndex});
  final int recipeIndex;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  List<List<String>> ingredients = [
    ["Chocolate", "Cake"],
  ];
  List<List<String>> instructions = [
    ["Bake Them", "Eat Them"],
  ];
  String orderText(List values) {
    String result = "";
    for (var i = 0; i < values.length; i++) {
      result += "${i + 1}. ${values[i]} \n";
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Details")),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(h.recipes[widget.recipeIndex]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text("Ingredients:"),
                    Text(orderText(ingredients[widget.recipeIndex])),
                  ],
                ),
                Column(
                  children: [
                    Text("Instructions:"),
                    Text(orderText(instructions[widget.recipeIndex])),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
