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

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderVal = 1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 30,
              width: double.infinity,
            ),
            ClipRRect(
              
              borderRadius: BorderRadius.circular(20), // Image border
              child: SizedBox.fromSize(
                child: Image(image: AssetImage(widget.recipe.imageUrl)),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.recipe.label,
              style: const TextStyle(fontSize: 18),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
                  return Text(
                      '\n ${ingredient.detail}');
                },
              ),
            ),

         
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
                  return ElevatedButton(
                child: const Text('Location', style: TextStyle(color: Colors.white)),
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
