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
      'wat_arun',
      'assets/wat_arun.jpg',
      [Ingredient(1, 'Wat Arun Ratchawararam Ratchawaramahawihan', 'Bangkok',13.743611,100.488889)]
    ),
    // Recipe(
    //   'wat_bawon',
    //   'assets/wat_bawon.jpg',
    //     [Ingredient(1, 'WAT BOWONNIWET VIHARA', 'Bangkok')]
    // ),
    // Recipe(
    //   'wat_pho',
    //   'assets/wat_pho.jpg',
    //     [Ingredient(1, 'Wat Pho', 'Bangkok')]
    // ),
    // Recipe(
    //   'wat_pra_kaew',
    //   'assets/wat_pra_kaew.jpg',
    //     [Ingredient(1, 'Wat Phra Si Rattana Satsadaram', 'Bangkok')]
    // ),
    // Recipe(
    //   'wat_radbopit',
    //   'assets/wat_radbopit.jpg',
    //     [Ingredient(1, 'Wat Ratchabophit Sathitmahasimaram Ratchaworawihan', 'Bangkok')]
    // ),
    // Recipe(
    //   'wat_sutat',
    //   'assets/wat_sutat.jpg',
    //     [Ingredient(1, 'wat suthat thepwararam', 'Bangkok')]
    // ),
  ];

}

// TODO: Add Ingredient() here
class Ingredient {
  int count;
  String name;
  String province;
  double latitude;
  double longitude;
  Ingredient(
      this.count,
      this.name,
      this.province,
      this.latitude,
      this.longitude,
      );
}
