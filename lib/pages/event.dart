class Event {
  final String imagePath, title, description, location, duration, punchLine1, punchLine2;
  final List categoryIds, galleryImages;

  Event(
      {this.imagePath,
      this.title,
      this.description,
      this.location,
      this.duration,
      this.punchLine1,
      this.punchLine2,
      this.categoryIds,
      this.galleryImages});
}

final SonpurMelaEvent = Event(
    imagePath: "assets/eventimages/sonpur.jpg",
    title: "Sonpur Mela",
    description: " \n\nAlso known as'Harihar Kshetra Mela'. This Fir is held on Kartik Poornima in November."
        "Till date, it is second largest cattle fair of India and stretches on from 15 days to a month."
        "The sight of numerous elephhants , decorated for the purpose of sale , is an important visitor attraction",
    location: "sonpur,Patna",
    duration: "1 Month",
    punchLine1: "\n Animal Fair",
    punchLine2: "",
    galleryImages: ["assets/images/img/fair.jpg"],
    categoryIds: [0, 1]);

final chhathParv = Event(
    imagePath: "assets/eventimages/chhath3.jpg",
    title: "CHHATH MAHAPARV",
    description: "It is an ancient Hindu Vedic festival historically native to"
        "Indian subcontinent, more specifically , the indian states of BIHAR,JHARKHAND,UTTAR PRADESH"
        "This festival is dedicated to the Sun in order to thank them to bestow life on this earth.",
    location: "Bihar",
    duration: "1week",
    punchLine1: "FESTIVAL OF \nBELIEF",
    punchLine2: "",
    categoryIds: [0, 2],
    galleryImages: ["assets/eventimages/chhath1.jpg", "assets/eventimages/chhath2.jpg", "assets/eventimages/chhath4.jpg"]);

final gangaAarti = Event(
    imagePath: "assets/eventimages/GA1.jpg",
    title: "GANGA AARTI",
    description: "Ganga Aarti (ritual of offering prayer to the Ganges river) is held daily at dusk. "
        "Several priests perform this ritual by carrying deepam and moving it up and down in a rhythmic tune of bhajans."
        " Special aartis are held on Tuesdays and on religious festivals.",
    location: "NIT GHAT ,PATNA",
    duration: "30 min",
    punchLine1: "\nA VISUAL TREAT\n -GANGA AARTI",
    punchLine2: "",
    galleryImages: ["assets/eventimages/GA2.jpg", "assets/eventimages/GA3.jpg"],
    categoryIds: [0, 3]);

final biharDiwas = Event(
    imagePath: "assets/eventimages/BD1.jpg",
    title: "BIHAR DIWAS",
    description: "Bihar Day is observed every year on March 22, marking the formation of the state of Bihar. "
        "It was on this day when the British carved out the state from Bengal in 1912. The Day is a public holiday in Bihar."
        " Bihar Day was started and celebrated on large scale by Bihar Government in the tenure of Nitish Kumar.",

    location: "Gandhi Maidan ,PATNA",
    duration: "1 Day",
    punchLine1: "\n\nTREASURE \nOF \nINCREDIBLE INDIA",
    punchLine2: "",
    galleryImages: ["assets/eventimages/bd2.jpg", "assets/eventimages/.jpeg", "assets/eventimages/.jpeg"],
    categoryIds: [0, 4]);


final events = [
  SonpurMelaEvent,
  chhathParv,
  gangaAarti,
  biharDiwas,
];
