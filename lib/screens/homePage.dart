import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lstrv_app/book/booking.dart';
import 'package:lstrv_app/pages/gallery/grid_gallery.dart';
import 'package:lstrv_app/screens/data.dart';
import 'package:lstrv_app/pages/about_page.dart';
import 'package:lstrv_app/pages/attraction/attractions.dart';
import 'package:lstrv_app/pages/homepage/event_page.dart';
import 'package:lstrv_app/screens/detail.dart';
import 'package:lstrv_app/screens/bottom_bar.dart';
import 'package:lstrv_app/screens/settings.dart';
import 'package:lstrv_app/utils/style.dart';
import 'package:lstrv_app/pages/destination_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
enum BottomIcons { Home, Booking,Gallery,Setting }
class _HomePageState extends State<HomePage> {
  //List<NavigationItem> navigationItems = getNavigationItemList();NavigationItem selectedItem;
   BottomIcons bottomIcons = BottomIcons.Home;
  List<Place> places = getPlaceList();

  @override
  Widget build(BuildContext context) {
     return Scaffold(
    backgroundColor: kBackgroundColor,
     resizeToAvoidBottomPadding: false,
     appBar: new AppBar(
     backgroundColor: Colors.black,
     elevation: 0,
     title: Text(
     //"ऐतिहासिक Bihar",
       " INCREDIBLE BIHAR",
     style: TextStyle(
     fontSize: 28,
     fontWeight: FontWeight.bold,
     color: Colors.deepOrange,
     ),
    ),
    centerTitle:true,),
    body:
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
    Padding(
    padding: EdgeInsets.symmetric(horizontal: 28),
       child: Row(
         children: <Widget>[
           Expanded(child: SearchTextField()),
           SizedBox(width: 11),
           Container(
             width: 70,
             height: 60,
             decoration: BoxDecoration(
                 color: Color(0xFFF1f94aa),
                 borderRadius: BorderRadius.circular(10)
             ),
             child: Icon(Icons.filter_list, color: Colors.white,size: 32),
           )
         ],
       ),
     ),
    Padding(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6,),
    child :GestureDetector(
      onTap : (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Destination_Screen()));
      },
     child: Center(
       child: new Text(
     " DESTINATIONS",
      style: kHeading,
     ),
     ),
   ),
   ),

    Expanded(
    child: Container(
      height:160.0,
    padding: EdgeInsets.only(top: 6, left: 10,),
    child: ListView(
    physics: BouncingScrollPhysics(),
    scrollDirection: Axis.horizontal,
    children: buildPlaces(),
    ),
    ),
    ),

    Padding(
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6,),
    child :GestureDetector(
    onTap : (){
    Navigator.push(context, MaterialPageRoute(builder: (context) => About_Page()));
    },
    child: Center(
    child: Text(
    "ABOUT",
    style: kHeading,
    ),
    ),
    ),
    ),
    Container(
          height:80.0,
          padding: EdgeInsets.only(top: 8, left: 10,),
          decoration: BoxDecoration(
            image:DecorationImage(
              image:AssetImage( "assets/images/img/AerialPatna.jpg"),
              fit:BoxFit.fill,
            )
         ) ,
        ),

      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 2,
        ),
    child: Center(
        child: Text(
          "CATEGORIES",
          style: kHeading,
        ),),
      ),
      Padding(
        padding: EdgeInsets.only(top: 6, left: 10,),
        child:Column(
         children: <Widget>[
           Container(
         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 100,
                  width: 160,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    //color: Colors.white,
                      image:DecorationImage(
                        image:AssetImage( "assets/images/img/fair.jpg",),
                        fit:BoxFit.contain,
                      ),
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
             GestureDetector(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Event_Page()));
               },
            child: Center(
               child:Text(
                  "Events",
                  style:mTextStyle,
                ),
                ),),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  height: 100,
                  width: 220,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      //color: Colors.white,
                      image:DecorationImage(
                        image:AssetImage( "assets/images/attract/5.png"),
                        fit:BoxFit.contain,
                      )
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
              GestureDetector(
                     onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => Attractions()));
                    },
                child: Center(
                  child:Text(
                 "Attractions",
                  style:mTextStyle,
                ),
              ),),
              ],
            ),
          ],
        ),
      ),
      SizedBox(
        height: 32,
      ),
      ],
    ),
    ),
      bottomIcons == BottomIcons.Home
          ? Center (): Container(),
      bottomIcons == BottomIcons.Booking
          ? Center(): Container(),
      bottomIcons == BottomIcons.Gallery
          ? Center() : Container(),
      bottomIcons == BottomIcons.Setting
          ? Center() : Container(),
      Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          padding: EdgeInsets.only(left: 24, right: 24, bottom: 30),
          //color: Colors.lightBlueAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              BottomBar(
                  onPressed: () {
                    setState(() {
                      bottomIcons = BottomIcons.Home;
                    });
                  },
                  bottomIcons:
                  bottomIcons == BottomIcons.Home ? true : false,
                  icons: Icons.home,
                  text: "Home",
              ),
              BottomBar(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Booking()));
                    setState(() {
                      bottomIcons = BottomIcons.Booking;
                    });
                  },
                  bottomIcons:
                  bottomIcons == BottomIcons.Booking ? true : false,
                  icons: Icons.business_center,
                  text: "Booking",
              ),
              BottomBar(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>Grid_Gallery()));
                    setState(() {
                      bottomIcons = BottomIcons.Gallery;
                    });
                  },
                  bottomIcons:
                  bottomIcons == BottomIcons.Gallery ? true : false,
                  icons: Icons.image,
                  text: "Gallery"),
              BottomBar(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
                    setState(() {
                      bottomIcons = BottomIcons.Setting;
                    });
                  },
                  bottomIcons:
                  bottomIcons == BottomIcons.Setting ? true : false,
                  icons: Icons.settings,
                  text: "Setting",
              ),
            ],
          ),
        ),
      )
    ],
    ),
      /* bottomNavigationBar: Container(
         height: 60,
         margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8,),
         decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.only(
               topLeft: Radius.circular(10),
               topRight: Radius.circular(10),
               bottomLeft: Radius.circular(30),
               bottomRight: Radius.circular(30),
             )
         ),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: buildNavigationItems(),
         ),
       ),*/
    );
  }
  List<Widget> buildPlaces(){
    List<Widget> list = [];
    for (var place in places) {
      list.add(buildPlace(place));
    }
    return list;
  }
  Widget buildPlace(Place place){
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Detail(place: place)),
        );
      },
      child: Card(
        elevation: 2,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Hero(
          tag: place.images[0],
          child: Container(
            width: 230,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(place.images[0]),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      place.favorite = !place.favorite;
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 12, top: 12,),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Icon(
                        place.favorite ? Icons.favorite : Icons.favorite_border,
                        color: kPrimaryColor,
                        size: 36,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12, bottom: 12, right: 12,),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: <Widget>[
                            //Icon(Icons.location_on, color: Colors.white, size: 20,),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              place.district,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }}
  class SearchTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return TextField(
  style: TextStyle(color: Color(0xFFF234253),fontWeight: FontWeight.bold),
  decoration: InputDecoration(
  labelText: "Search",
  labelStyle: TextStyle(color: Color(0xFFF234353),fontWeight: FontWeight.bold),
  prefixIcon: Icon(Icons.search,size: 28),
  fillColor: Color(0xFFFeaf2f4),
  filled: true,
  focusedBorder: OutlineInputBorder(
  borderSide: BorderSide(color: Colors.white),
  borderRadius: BorderRadius.circular(12)
  ),
  enabledBorder: OutlineInputBorder(
  borderSide: BorderSide(color: Colors.white),
  borderRadius: BorderRadius.circular(12)
  )
  ),
  );
  }
  }
 /* List<Widget> buildNavigationItems(){
    List<Widget> list = [];
    for (var navigationItem in navigationItems) {
      list.add(buildNavigationItem(navigationItem));
    }
    return list;
  }

  Widget buildNavigationItem(NavigationItem item){
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedItem = item;
        });
      },
      child: Container(
        width: 50,
        child: Stack(
          children: <Widget>[

            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 40,
                height: 3,
                color: selectedItem == item ? kPrimaryColor : Colors.transparent,
              ),
            ),

            Center(
              child: Icon(
                item.iconData,
                color: selectedItem == item ? kPrimaryColor : Colors.grey[400],
                size: 28,
              ),
            )

          ],
        ),
      ),
    );
  }*/




