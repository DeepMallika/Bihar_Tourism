import 'package:flutter/widgets.dart';
import 'package:lstrv_app/utils/assets.dart';

class Rajgir_Place {
  final String name;
  final String imagePath;
  final String description;

  Rajgir_Place(
      {@required this.name,
        @required this.imagePath,
        @required this.description});
}


Rajgir_Place firstMember = Rajgir_Place(
    name: "SHANTI STUPA",
    imagePath: Assets.stupa,
    description: "The Vishwa Shanti Stupa is located on a 400 m height hill.The Stupa is built in marble and on the fouer corners of the Stupa are four glimmering statues of Buddha."
        "To reach the top of this hill one has to come through the ropeway.This place is also called the Griddhkoot."
        "Aerial ropeway tickwet cost is 60 as per head.It is one of the most attractive places in Rajgir.Many tourists visit rajgir mostly in autumn,"
        "winter and spring that is mostly in the month from october to March."
);
Rajgir_Place secondMember = Rajgir_Place(
    name: "SONBHANDAR CAVES",
    imagePath: Assets.caves,
    description: "Two rather strange cave chambers were hollowed out of a single massive rock.One of the chambers is believed to have been the Guardroom,"
        "the rare wall has to straight verticL line and one horizontal line cut into the rock;the doorway is supposed to lead to King Bimbisara Treasury."
        "Inscriptions in the Sankhlipi or Shell Script,etched into wall and so far undeciphered,are believed to give the clue to open the doorway. "
        "The treasure,according to folklory,is still intact.The second chamber bears a few traces of seated and standing etched into the outer wall."
        "It is also one of the beautiful sites of Rajgir."
);

Rajgir_Place thirdMember = Rajgir_Place(
    name: "HOT SPRING",
    imagePath: Assets.kund,
    description: "Hot Spring is not only the touris attraction but is also a religious place for the Hindus.It is considered very sacred and pure.At the foot of Vaibhava Hill,"
        "a staircase leads upto the various temples.Seperate bathing places has been constructed for men and women and the water comes from Saptdhara,the seven streams,"
        "believd to find their origin behind the Saptrani Caves,up in the hills.The hottest of the spring is the Brahmakund with a temperature of 45 degree centigrade."
);
Rajgir_Place fifthMember = Rajgir_Place(
    name: "NALANDA RUINS",
    imagePath: Assets.khandar,
    description: "One of the first ancient universities of the world, the university of Nalanda was established in 450AD."
        "Built in the Gupta period under the patronage of King Kumargupta,the university has a detailed description in tne works of Chinese traveller Huien Tsang."
        "More than 10,000 students and 2,000 teachers sated in the domintories and the university campuse had classrooms ,meditation halls,"
        "ten temples and eight compounds."
    "Almost every field of study was taught here and students from Korea,Japan,China,Tibet,Indonesia and Turkey, amomg other countries flocked to this university ."
        "The ASI Museum has preserved the teracotta seal of Nalanda University has put it on diaplay."
);

List<Rajgir_Place> places = [firstMember, secondMember, thirdMember, fifthMember];