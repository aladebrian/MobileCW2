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
    ["Carrot", "Cake"],
    [
      "32 ounces fresh or frozen strawberries thawed",
      "4 ounces sugar optional",
      "1 Tablespoon lemon juice",
      "1 teaspoon lemon zest",
      "1 pinch salt",
      "8 ounces unsalted butter room temperature",
      "10 ounces granulated sugar",
      "6 ounces egg whites room temperature",
      "4 ounces milk room temperature, whole milk is best",
      "6 ounces strawberry reduction room temperature",
      "2 ounces vegetable or canola oil",
      "1 Tablespoon lemon juice fresh",
      "zest one lemon",
      "1 ½ teaspoon strawberry emulsion or extract, I use LorAnn oils bakery emulsion",
      "1 teaspoon vanilla extract",
      "½ teaspoon Pink food color I use Americolor electric pink gel",
      "14 ounces all purpose flour",
      "1 ½ teaspoons baking powder",
      "1 teaspoon baking soda",
      "½ teaspoon salt",
      "4 ounces pasteurized egg whites",
      "16 ounces powdered sugar",
      "16 ounces unsalted butter room temperature",
      "½ teaspoon salt",
      "1 teaspoon vanilla extract",
      "4 ounces strawberry reduction room temperature",
    ],
  ];
  List<List<String>> instructions = [
    ["Bake Them", "Eat Them"],
    ["Chop up gross carrots", "Make magnificence"],
    [
      "I recommend making this reduction the day before you're ready to make your cake.",
      "Place your thawed or fresh strawberries into the blender and blend until smooth.",
      "Place the strawberry puree, sugar, lemon zest, and lemon juice into a medium saucepan and bring it to a boil.",
      "Once bubbling, reduce heat to medium-low and slowly reduce the puree until you have two cups of liquid and the mixture is very thick like tomato sauce. This can take between 40-60 minutes. Occasionally stir the mixture to prevent burning.",
      "You will use some of the reduction for the cake batter, some for the frosting and the rest for filling between the cake layers for extra moisture. Leftover reduction can be stored in the fridge for up to one week or frozen for 6 months.",
      "NOTE: It is SUPER IMPORTANT that all the room temperature ingredients listed above are room temperature and not cold or hot.",
      "Make sure to take your strawberry reduction out of the refrigerator 1 hour before making your cake so that it comes to room temperature or microwave it for about a minute so that it's warm.",
      "Adjust an oven rack to the middle position and preheat to 350ºF/176ºC.",
      "Grease two 8\" cake pans with cake goop or preferred pan release",
      "In a separate medium bowl, whisk together the milk, oil, strawberry reduction, strawberry emulsion, vanilla extract, lemon zest, lemon juice, and pink food coloring.",
      "In a separate medium bowl, whisk together the flour, baking powder, baking soda and salt.",
      "Add room temperature butter to your stand mixer with the paddle attachment and beat at medium speed until smooth and shiny, about 30 seconds.",
      "Gradually sprinkle in the sugar, beat until mixture is fluffy and almost white, about 3-5 minutes.",
      "Add the egg whites one at a time, beating 15 seconds in between. Your mixture should look cohesive at this point. If it looks curdled and broken, your butter or egg whites were too cold. ",
      "Mix on low speed and add about a third of the dry ingredients to the batter, followed immediately by about a third of the milk mixture, mix until ingredients are almost incorporated into the batter.",
      "Repeat the process 2 more times. When the batter appears blended, stop the mixer and scrape the sides of the bowl with a rubber spatula. If it looks like ice cream, you did it right!",
      "Divide the batter evenly between the prepared pans",
      "Bake cakes at 350ºF/176ºC until they feel firm in the center and a toothpick comes out clean or with just a few crumbs on it, about 30-35 minutes.",
      "Place pans on top of a wire rack and let cool for 10 minutes. Then flip your cakes onto the racks and cool completely. ",
      "Once cooled, wrap each layer in plastic wrap and refrigerate or freeze before assembling your cake.",
      "Place egg whites and powdered sugar in a stand mixer bowl. Attach the whisk and combine ingredients on low and then whip on high for 5 minutes ",
      "Place pasteurized egg whites and powdered sugar in the bowl of your stand mixer. Add the whisk attachment and combine ingredients on low, then whip on high for 5 minutes.",
      "Add in your softened butter in chunks and whip on high for 8-10 minutes until it's very white, light and shiny. It may look curdled and yellow at first, this is normal. Keep whipping.",
      "Add in strawberry reduction, vanilla extract and salt and continue whipping until incorporated.",
      "Optional: Switch to a paddle attachment and mix on low for 15-20 minutes to make the buttercream very smooth and remove air bubbles.",
    ],
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
      appBar: AppBar(title: Text(h.recipes[widget.recipeIndex])),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 500.0,
                  child: Column(
                    children: [
                      Text("Ingredients:"),
                      Text(orderText(ingredients[widget.recipeIndex])),
                    ],
                  ),
                ),
                SizedBox(
                  width: 500.0,
                  child: Column(
                    children: [
                      Text("Instructions:"),
                      Text(orderText(instructions[widget.recipeIndex])),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
