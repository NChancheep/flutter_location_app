class Recipe {
  String label;
  String imageUrl;
  // TODO: Add servings and ingredients here
  List<Ingredient> ingredients;
  Recipe(
      this.label,
      this.imageUrl,
      this.ingredients
      );
// TODO; Add List<Recipe> here
  static List<Recipe> samples = [
    Recipe(
      'Wat Arun Ratchawararam Ratchawaramahawihan',
      'assets/wat_arun.jpg',
      [Ingredient('Wat Arun Ratchawararam Ratchawaramahawihan', 'Bangkok',13.743611,100.488889)]
    ),
    Recipe(
      'WAT BOWONNIWET VIHARA',
      'assets/wat_bawon.jpg',
        [Ingredient('WAT BOWONNIWET VIHARA', 'Bangkok',13.760333,100.499861)]
    ),
    Recipe(
      'Wat Pho',
      'assets/wat_pho.jpg',
        [Ingredient('Wat Pho', 'Bangkok',13.741163702,100.489498042)]
    ),
    Recipe(
      'Wat Phra Si Rattana Satsadaram',
      'assets/wat_pra_kaew.jpg',
        [Ingredient('Wat Phra Si Rattana Satsadaram', 'Bangkok',13.751389,100.4925)]
    ),
    Recipe(
      'Wat Ratchabophit Sathitmahasimaram Ratchaworawihan',
      'assets/wat_radbopit.jpg',
        [Ingredient('Wat Ratchabophit Sathitmahasimaram Ratchaworawihan', 'Bangkok',13.749167,100.497222)]
    ),
    Recipe(
      'wat suthat thepwararam',
      'assets/wat_sutat.jpg',
        [Ingredient('wat suthat thepwararam', 'Bangkok',13.751028,100.501004)]
    ),
  ];

}

// TODO: Add Ingredient() here
class Ingredient {
  String name;
  String province;
  double latitude;
  double longitude;
  Ingredient(
      this.name,
      this.province,
      this.latitude,
      this.longitude,
      );
}
