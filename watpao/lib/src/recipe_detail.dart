import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  _RecipeDetailState createState() {
    return _RecipeDetailState();
  }
}

// TODO: Add _RecipeDetailState here
class _RecipeDetailState extends State<RecipeDetail> {
  // TODO: Add _sliderVal here
  int _sliderVal = 1;


  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      // 2
      body: SafeArea(
        // 3
        child: Column(
          children: <Widget>[
            // 4
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.recipe.imageUrl),
              ),
            ),
            // 5
            const SizedBox(
              height: 4,
            ),
            // 6
            Text(
              widget.recipe.label,
              style: const TextStyle(fontSize: 18),
            ),
            // TODO: Add Expanded
// 7
            Expanded(
              // 8
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
                  // 9
                  // TODO: Add ingredient.quantity
                  return Text(
                      '${ingredient.name} ${ingredient.province} ${ingredient.latitude} ${ingredient.longitude}');
                },
              ),
            ),

         
            Expanded(
              // 8
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
                  // 9
                  // TODO: Add ingredient.quantity
                  return ElevatedButton(
                child: const Text('Your location', style: TextStyle(color: Colors.white)),
                onPressed: () async {
                  LocationPermission permission;
                  permission = await Geolocator.requestPermission();
                  final location = await Geolocator.getCurrentPosition(
                    desiredAccuracy: LocationAccuracy.high,
                  );

                  String mapUrl =
                      "https://www.google.com/maps/search/?api=1&query=${ingredient.latitude},${ingredient.longitude}";

                  await canLaunch(mapUrl)
                      ? await launch(mapUrl)
                      : throw ("Couldn't open google maps");
                },
                style: ElevatedButton.styleFrom(primary: Colors.red[900]),
              );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
