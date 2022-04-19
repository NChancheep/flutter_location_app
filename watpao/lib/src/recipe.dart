class Recipe {
  String label;
  String imageUrl;
  List<Ingredient> ingredients;
  Recipe(
      this.label,
      this.imageUrl,
      this.ingredients
      );
  static List<Recipe> samples = [
    Recipe(
      'Wat Arun',
      'assets/wat_arun.jpg',
      [Ingredient('Wat Arun', 
        'Bangkok',
        'Wat Arun Ratchawararam Ratchawaramahawihan or Wat Arun is a Buddhist temple in Bangkok Yai district of Bangkok, Thailand, on the Thonburi west bank of the Chao Phraya River.'
        ,13.743611,100.488889
        )
      ]
    ),
    Recipe(
      'Wat Bowonniwet Vihara',
      'assets/wat_bawon.jpg',
        [Ingredient('Wat Bowonniwet Vihara', 
          'Bangkok',
          'Wat Pavaranivesh Vihara Ratchawarawihan is a major Buddhist temple in Phra Nakhon district, Bangkok, Thailand. Being the residence of Nyanasamvara Suvaddhana; the late Supreme Patriarch of Thailand.',
          13.760333,100.499861
          )
        ]
    ),
    Recipe(
      'Wat Pho',
      'assets/wat_pho.jpg',
        [Ingredient('Wat Pho', 
          'Bangkok', 
          'Wat Pho, also spelled Wat Po, is a Buddhist temple complex in the Phra Nakhon District, Bangkok, Thailand. It is on Rattanakosin Island, directly south of the Grand Palace.',
          13.741163702,100.489498042
          )
        ]
    ),
    Recipe(
      'Wat Phra Kaew',
      'assets/wat_pra_kaew.jpg',
        [Ingredient('Wat Phra Kaew', 
          'Bangkok',
          'Wat Phra Kaew, commonly known in English as the Temple of the Emerald Buddha and officially as Wat Phra Si Rattana Satsadaram, is regarded as the most sacred Buddhist temple in Thailand.'
          ,13.751389,100.4925
          )
        ]
    ),
    Recipe(
      'Wat Ratchabophit',
      'assets/wat_radbopit.jpg',
        [Ingredient('Wat Ratchabophit', 
          'Bangkok',
          'Wat Ratchabophit or formally Wat Ratchabophit Sathitmahasimaram Ratchaworawihan, is a Buddhist temple on Atsadang Road, Bangkok, along Khlong Khu Mueang Doem, not far from Wat Pho and the Grand Palace.',
          13.749167,100.497222
          )
        ]
    ),
    Recipe(
      'Wat Suthat',
      'assets/wat_sutat.jpg',
        [Ingredient('Wat Suthat', 
          'Bangkok',
          'Wat Suthat Thepwararam is a Buddhist temple in Bangkok, Thailand. It is a royal temple of the first grade, one of ten such temples in Bangkok.',
          13.751028,100.501004
          )
        ]
    ),
  ];

}

class Ingredient {
  String name;
  String province;
  String detail;
  double latitude;
  double longitude;
  Ingredient(
      this.name,
      this.province,
      this.detail,
      this.latitude,
      this.longitude,
      );
}
