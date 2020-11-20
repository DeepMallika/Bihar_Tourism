import 'package:flutter/widgets.dart';
import 'package:lstrv_app/utils/assets.dart';

class Gaya_Place {
  final String name;
  final String imagePath;
  final String description;

  Gaya_Place(
      {@required this.name,
        @required this.imagePath,
        @required this.description});
}


Gaya_Place fourthMember = Gaya_Place(
    name: "MAHABODHI TEMPLE",
    imagePath: Assets.temple,
    description: " The historical place at which the Enlightment took place became a place of pilgrimage.About 250 years after the Enlightment ,"
        "the Buddhist Emperor Ashoka visited the site and is considered the founder of the Mahabodhi Temple.According to the tradition,"
        "Ashoka as well as establishing a monastery,erected a diamond throne shrine at this spot with a canopy "
        "supported by four pillars over a stone representation of the Vajrasana,the Seat of Enlightment."
        " Inside the temple there is a colossal image of the Buddha in the 'touching the ground pose', bhumisparsha mudra."
);

Gaya_Place secondMember = Gaya_Place(
    name: "BODHI TREE",
    imagePath: Assets.btree,
    description: " For seven daysafter the Enlightment,the Buddha continued to meditate under the Bodhi tree without moving from his seat."
        "During the second week he practiced walking meditation . A jewel walk,Chankramanar, was built as a low platform adorned with 19th lotuses which are parallel to the Maha Bodhi temple on it's north side."
        "For another week the Buddha contemplated the Bodhi Tree."
        " In this place a stupa was built called Animeschalochana situated to the north of the Chankramanar.");

Gaya_Place thirdMember = Gaya_Place(
    name: "BARABAR CAVE",
    imagePath: Assets.bcave,
    description: " It is an important archaelogical site.The caves carved out from solid rocks bear details of the life of the Buddha. "
        "The interior of these caves reflect the skill with which these caves were carved out."
        "These caves of Mauryan period are rightly considered to be the origin of Indian cave architecture."
        "The special feature of these caves is that their cuttings are so wonderfully sharp that they draw parallels to the laser cuttings of the present times."
        "In short,Barabar caves not just delight but stun architecture minds."
);
Gaya_Place fifthMember = Gaya_Place(
    name: "BODHGAYA ",
    imagePath: Assets.bgaya,
    description: "BodhGaya is one of the most important and sacred Budhhist pilgrimage center in the world.It was here under a banyan tree, the Bodhi Tree, "
        "Gautama Buddha attained unsurpassed, supreme Enlightment. It is a place which should be visited or seen by a person of devotion and which would cause awareness and apprehension of the nature of impermanence"
        "On the banks of Lilanjan River,BodhGaya ,famously referred to as Gaya, welcomes you to its attractions."
        "For nature lovers, the place holds attractions as it is located in a stunning setting amidst hills thus presenting a picturesque landscape that is both serene and stimulating."
);

List<Gaya_Place> places = [fourthMember, secondMember, thirdMember, fifthMember];