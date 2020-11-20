import 'package:flutter/widgets.dart';
import 'package:lstrv_app/utils/assets.dart';

class Vaishali_Place {
  final String name;
  final String imagePath;
  final String description;

  Vaishali_Place(
      {@required this.name,
        @required this.imagePath,
        @required this.description});
}


Vaishali_Place firstMember = Vaishali_Place(
    name: "RELIC STUPA",
    imagePath: Assets.relic,
    description: "Near the Coronation Tank is the Stupa1 or the Relic Stupa. Here the Lichhavis reverentially encased one of the eight portions of the"
        " Master's Relics,which they recieved after the Mahaparinirvana.After his last discourse the Awakened one set out for Kushinagar,"
        "but the Licchavis kept following him.Buddha gave them his alms bowl but they still refused to return."
        "The master created an illusion of a river in spate wich compelled them to go back"
);
Vaishali_Place secondMember = Vaishali_Place(
    name: "VAISHALI MUSEUM",
    imagePath: Assets.vmuseum,
    description: "Vaishali Meuseum houses some of the archeological remains discovered here. Facing the meuseum is the Abhishek Pushkarni which was holy to Lichchhavis."
        "On one side of the lake is the newly built stupa.Close to the meuseum is the shaded stupa which is supposed to have house of the casket relic "
        "with the ashes of Buddhaa. Archeologists have covered a good deal of Vaishali.It begins with a huge mound which is associated with the ancient Parliament refered to Raja Vaihala ka Ghar"
);
Vaishali_Place thirdMember = Vaishali_Place(
    name: "ASHOKAN PILLAR",
    imagePath: Assets.pillar,
    description: "Emperor Ashoka built The Lion Pillar at Kolhua with a highly polished single piece of red sandstone, surmounted by a bell shaped "
        "capital, 18.3 m high. A life-size figure of a lion is placed on top of the pillar. "
        "There is a small tank here known as Ramkund. This pillar beside a brick stupa at Kolhua commemorates Buddha's last sermon."
);

Vaishali_Place fifthMember = Vaishali_Place(
    name: "KUTAGRASHALA VIHARA",
    imagePath: Assets.vihara,
    description: "Kutagarashala Vihara is the monastery where Buddha most frequently stayed while visiting Vaishali."
        "It is located three kilometeres from Relic Stupa,and on its ground can be found the Ananda Stupa,with an Ashokan Pillar in very good condition"
        "(perhaps the only complete Ashokan Pillar left standing), and an Ancient pond.It is also one of the beautiful sites of Vaishali."
);

List<Vaishali_Place> places = [firstMember, secondMember, thirdMember, fifthMember];