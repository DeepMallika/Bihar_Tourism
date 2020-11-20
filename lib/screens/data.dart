import 'package:flutter/material.dart';

class Place {

  String district;
  List<String> images;
  bool favorite;

  Place( this.district, this.images, this.favorite);
}

List<Place> getPlaceList(){
  return <Place>[
    Place(
        "Patna",
        [
          "assets/images/Patna/sabhyata_dwar.jpg",
          "assets/images/Patna/bsp3.jpg",
          "assets/images/Patna/gurudwara.jpg",
          "assets/images/Patna/bm2.jpg",
          "assets/images/Patna/gandhi.jpg",

        ],
        false
    ),
    Place(
        "Gaya",

        [
          "assets/images/gaya/buddha1.jpg",
          "assets/images/gaya/boddhi.jpg",
          "assets/images/gaya/barabar.jpg",
          "assets/images/gaya/buddhist1.jpg",
        ],
        false
    ),
    Place(
        "Vaishali",
        [
          "assets/images/vaishali/vais3.jpg",
          "assets/images/vaishali/vais2.jpg",
          "assets/images/vaishali/vais1.jpg",

        ],
        false
    ),

    Place(
        "Rajgir",
        [
          "assets/images/rajgir/rajgir4.jpg",
          "assets/images/rajgir/rajgir3.jpg",
          "assets/images/rajgir/rajgir2.jpg",
        ],
        false
    ),
    Place(
        "Pawapuri",
        [
          "assets/images/pawapuri/jm3.jpg",
          "assets/images/pawapuri/jm1.jpg",
          "assets/images/pawapuri/jm4.jpg",
        ],
        false
    ),
  ];
}

