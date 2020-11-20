import 'package:flutter/widgets.dart';
import 'package:lstrv_app/utils/assets.dart';

class Pawapuri_Place {
  final String name;
  final String imagePath;
  final String description;

  Pawapuri_Place(
      {@required this.name,
        @required this.imagePath,
        @required this.description});
}


Pawapuri_Place firstMember = Pawapuri_Place(
    name: "JAL MANDIR",
    imagePath: Assets.jmandir,
    description: "A marble temple,the Jalmadir ,was later built in the middle of the tank, and is now a major pilgrimage spot for Jains."
        "Jal Mandir marks the spot where Lord Mahavira was cremated in Pawapuri.According to legend,there was a great rush among the gathered devotees to collect his ashes resulting in a lake being created in the hollow."
        "The temple was built in the middle of this lake by King Nandivardhan. Surrounded by blooming lotuses the temple enshrines the Charan Paduka or holy sandals of Mahavira ."
"It is built in the shape of a Vimana or palace and is connected to the mainland by a six hundred feet long stone bridge."
        "Apart from its immense religious significance,the temple is a beautiful structure with a tranquil and scenic setting.Jal Mandir is made in shape of Vimana "
        ".The sanctum of temple enshrines old Charan Paduka of Lord Mahavira."
);
Pawapuri_Place secondMember = Pawapuri_Place(
    name: "SAMOSARAN",
    imagePath: Assets.ssaran,
    description: "There is a temple located in the vicinity to Jal temple names Samosaran,where the Lord Mahavira used to deliver sermon to his disciples."
        "The place is famous as the site where he preached in last days of his life.It is a temple made of white marble and in circular shape in the form beehive."
        "The temple also contains the footprints of Lord Mahavira.Samosaran is another important temple located next to Jal Mandir in Pawapuri. "
        "According to Jain scriptures Lord Mahaira had preached several spiritual sermons known as Samsvaran temple after attaining Keval Gyan or Omniscience."
        "Samosaran temple is situated at a site where one such important sermon had taken place ,during the last days of Mahavira's life."
        "It is made of white marble and is circular in shape with a beehive-like structure."
        "It is of immense significance to the Jain community as the footprints of Lord Mahavira are preserved here."
);

Pawapuri_Place thirdMember = Pawapuri_Place(
    name: "GAON MANDIR",
    imagePath: Assets.gmandir,
    description: "Gaon Mandir or temple of the village is a spot where Lord Mahavira took his last breath.The temple of Gaon Mandir was constructed by King Nandivardhan ,"
        "who was the elder brother of Lord Mahavira.Aware of his approaching end,Mahavira started preaching his last sermon and attained nirvana while in the midst of it."
        "The devotees gathered there were so overcome with sorrow that they lighted earthen lamps with ghee to assuage their grief."
        "The temple has a huge compound with a rest house for pilgrims."
        "A stone memorial marks the restoration of Pawapuri in 1641 AD by the Swetamabri Sangh of Bihar under Acharya Jina Raja Suri."
);
Pawapuri_Place fifthMember = Pawapuri_Place(
    name: "GUNAYAJI",
    imagePath: Assets.gunya,
    description: "Gunayaji is a village on the Patna-Ranchi highway 20 kms. from Pawapuri.It is an important Jain pilgrim centre as the Shri Gunayaji TEERTH temple is located here."
        "The temple stands in the middle of the lake 3kms. from Nawadah station.It is dedicated to the chief disciple of Lord Mahavira ,Shri Gautam Swami Maharaj.He is believed Kewal Gyan or Omnicience here.A 30cms. "
        "tall white marble idol of Gautam Swamiji seated in the lotus pose is enshrined within the temple.It is also believed to be the site of the ancient Gunasheel Chatiya or virtuous home mentioned in the history of Rajgir where Mahavira had preached his doctrines several times."
);

List<Pawapuri_Place> places = [firstMember, secondMember, thirdMember, fifthMember];