import 'package:flutter/widgets.dart';
import 'package:lstrv_app/utils/assets.dart';

class Member {
  final String name;
  final String imagePath;
  final String description;

  Member(
      {@required this.name,
        @required this.imagePath,
        @required this.description});
}


   Member firstMember = Member(
    name: "Madhubani Paintings",
    imagePath: Assets.paint,
    description: "Madhubani, which by one account means Forest of Honey, (‘Madhu’-honey, ‘Ban’-forest or woods) is a region in Mithila region of Nepal and the northern part (Madhubani district) of Bihar. The Madhubani paintings is an ancient style of painting that originates 2500 years ago. Legend has it that The King of Mithila ( a region now in modern Nepal and with its capital Janakpur) had first commissioned rural artists to paint the palace walls. The occasion was his daughter’s wedding. The name of his daughter was Sita and the bride groom was Lord Rama.Following the age old methods of painting, artist, till date, mixes cow-dung and rock-salt glue to the paints. While cow dung is used for the shine it imparts to the colored patches, glue helps the paint to bind well with the special handmade paper used for these paintings."
    "Its main feature is the line drawings filled in by bright colours which have high contrasts and very intricate details and patterns. Madubhani painting was mainly done by the women of the region within the courtyard of the house.");

    Member secondMember = Member(
    name: "Folk Dance ",
    imagePath: Assets.dance,
    description: "Biharis have proved their creativity in the performance of folk dancing. Numerous dance styles namely gond nach, Som Chakwa, dhobi nach, jhumarnach, manjhi, jitiyanach, more morni, kathghorwa nach, jat jatin, launda nach, bamar nach, jharni jhijhia, natua nach, bidapad anch, sohrai nach still prevail in villages in Bihar.The gods and goddesses are invoked through the religious dance forms in Bihar from good old times. Mention may be made of Ram-lila Nach, Kirtaniya Nach, Kunjvasi Nach and Naradi Nach, Bhagata Nach, Vidapat Nach and Puja Art Nach in this category. Minimum use is made of musical instruments and dancer performs the dances without humming the tune.");

    Member thirdMember = Member(
    name: "Laser Shows",
    imagePath: Assets.laser,
    description: "Bihar State Tourism Development Corporation (BSTDC) has been running laser, light and sound shows on the premises of the historic granary near Gandhi Maidan."
        "The shows would be held in the open space between Patliputra Karuna Stupa — the central stupa — and the meditation block.Forty-five minute shows would be held twice or more in the evening. They would comprise music, high-efficiency laser system, high-definition video projection, theatrical lighting, non-propane flame effects, surround sound and special effects, including bubbles, mist and smoke."
         "Sources in the tourism development corporation said the laser shows would aim to educate visitors on the life of Buddha and Bihar. The shows would be based on the four themes of history of Bihar, history of Pataliputra, life of Lord Buddha and teachings of Buddha" );

    Member fifthMember = Member(
    name: "Cuisines ",
    imagePath: Assets.food,
    description: "The evolution of the cuisine of Bihar can be traced back to the rulers who ruled the land and the religions practised there. Buddhism brought with it the concept of non-violence to Bihar as a result of which a large portion of the population is vegetarian in Bihar. In the lands that are drained by the river Ganga that have fertile soil, rice and wheat are grown a plenty. Consequently, Bihar is among the few north Indian states where both rice and wheat are consumed in equal measure."
       "Another speciality of the region is that people of Bihar give a lot of importance to eating seasonal food; their specialities change from season to season. Food is predominantly cooked in mustard oil that lends it a distinct taste. Biharis believe in letting the taste of the seasonal ingredients shine through the food without overpowering them with spices. Here is a look at the food from the state of Bihar."
       "Dishes for which Bihar is famous include Bihari kebabs, litti chokha, Bihari boti, Bihari chicken masala, sattu paratha (parathas stuffed with roasted gram flour), chokha (spicy mashed eggplant and potatoes), fish curry and posta-dana ka halwa.Bihari cuisine includes Bhojpuri cuisine,[1] Maithil cuisine and Magahi cuisine.");


List<Member> members = [firstMember, secondMember, thirdMember, fifthMember];