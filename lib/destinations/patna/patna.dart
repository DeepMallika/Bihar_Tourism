import 'package:flutter/widgets.dart';
import 'package:lstrv_app/utils/assets.dart';

class Patna_Place {
  final String name;
  final String imagePath;
  final String description;

  Patna_Place(
      {@required this.name,
        @required this.imagePath,
        @required this.description});
}


Patna_Place firstMember = Patna_Place(
    name: "BIHAR MUSEUM",
    imagePath: Assets.bmuseum,
    description: "Bihar Museum is a museum located in Patna. It was partially opened in August 2015"
        "The Bihar Museum has several galleries. These include the Orientation gallery, the children gallery, the regional gallery, the contemporary gallery,"
        " the historical art galleries, the Bihari Diaspora gallery and the visible storage gallery."
        " The exhibits on different subjects are displayed in separate galleries. "
        "Each gallery is huge and has many artifacts on display including ones dating back to the 4th century."
);
Patna_Place secondMember = Patna_Place(
    name: "BUDDHA PARK",
    imagePath: Assets.park,
    description: "The park has been constructed at the place where once The historical Bankipur Central Jail of British era existed. "
        "After a new central jail was built at Beur on the outskirts of Patna, the old jail become redundant."
        "There is a laser show in the park in the evenings. The show is related to the history of Bihar from the time of Ramayana to post Independence."
        "The park has saplings of holy Bodhi trees which have been received from Mahameghavana Anuradhapura, Sri Lanka and Bodh Gaya, India."
);
Patna_Place thirdMember = Patna_Place(
    name: "PATNA ZOO",
    imagePath: Assets.zoo,
    description: "Sanjay Gandhi Jaivik Udyan (also known as Sanjay Gandhi Botanical and Zoological Garden or Patna Zoo) is located"
        " off Bailey Road in Patna, Bihar, India."
        "The Patna Zoo makes considerable effort to conserve and propagate endangered species from around the world."
        "Breeding captive wild animals is a difficult challenge that the zoo has met with some notable success."

);
Patna_Place fifthMember = Patna_Place(
    name: "GOLGHAR",
    imagePath: Assets.golghar,
    description: "Situuated on the western corner of Patna,Golghar is a famous monument in patna.It is semicircular in shape. "
        "This is a huge granary made in 1786 by Captain John Garstin for the British army after the famine in 1770.One can get a picturesque view of"
        " the river Ganga as well as the city from the spiral staircase around the movement."
        "At the base ,the walls are only 3.6m wide and the structure is 29m high"
);


List<Patna_Place> places = [firstMember, secondMember, thirdMember, fifthMember];