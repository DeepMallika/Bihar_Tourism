import 'package:lstrv_app/book/hotel_booking.dart';
import 'package:flutter/material.dart';
import 'package:lstrv_app/book/mybooking.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:lstrv_app/book/hotel_data.dart';
import 'package:lstrv_app/book/hotel_model.dart';

 class Booking extends StatelessWidget {
  const Booking({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
          body: Column(
            children: <Widget>[
              Container(
                height: size.height,
                width: size.width,
                child: Column(
                  children: <Widget>[
                    Theme(
                      data: Theme.of(context).copyWith(
                        iconTheme: IconThemeData(
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                      child: Container(
                        height: 90,
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colors.blue[800],
                              Colors.blue[700],
                              Colors.blue[600],
                              Colors.blue[400],
                              Colors.blue[300],
                            ],
                          ),
                        ),
                        child: SafeArea(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.arrow_back_ios),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Popular Hotels',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 19,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.swap_vert),
                                  SizedBox(width: 10),
                                  Icon(Icons.filter_list),
                                  PopupMenuButton(
                                    itemBuilder: (content) =>[
                                      PopupMenuItem(
                                        child: Text('My Booking',
                                          style:TextStyle(
                                            fontSize:20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.deepOrange,
                                          ),),
                                        //child: Icon(Icons.refresh,color:Colors.green,size:30.0),
                                        value: 1,
                                      ),],//PopupMenuItem(child: Text('Cancel'),//child: Icon(Icons.cancel,color:Colors.black,size:28.0),value: 3,),],
                                    onSelected: (int menu){
                                      if (menu == 1){
                                        Navigator.push(context,MaterialPageRoute(builder: (context) => Mybooking()));
                                        ;}},),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),SizedBox(height:6,),
                    RaisedButton(
                      color: Colors.black,
                      child: Text("  BOOK NOW   ",style:TextStyle(fontSize: 18.0,)),
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => hotel_booking()));
                      }, ),
                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        itemCount: hotels.length,
                        itemBuilder: (_, index) {
                          return _cardBuilder(size, hotels[index]);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ]
        )
    );
  }
}
Widget _cardBuilder(Size size, QuantHotelModel item) {
  return Padding(
    padding: const EdgeInsets.only(top: 15),
    child: Container(
      height: 280,
      width: size.width,
      child: Card(
        elevation: 8,
        margin: EdgeInsets.all(0),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 190,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(item.img),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    width: size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              item.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 2),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.location_on,
                                  size: 18,
                                  color: Colors.grey,
                                ),
                                Text(
                                  item.location,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: <Widget>[
                                RatingBarIndicator(
                                  rating: item.reviews,
                                  itemCount: 4,
                                  itemSize: 18.0,
                                  physics: BouncingScrollPhysics(),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                ),
                                Text(
                                  " ${item.reviews}",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "\Rs. ${item.price}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Per Night",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              right: 15,
              bottom: 70,
              child: Container(
                height: 42,
                width: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.blue[800],
                      Colors.blue[700],
                      Colors.blue[300],
                    ],
                  ),
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(30.0),
                  onTap: () {},
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
const TextStyle dropDownLabelStyle =
TextStyle(color: Colors.white, fontSize: 16.0);
const TextStyle dropDownMenuItemStyle =
TextStyle(color: Colors.black, fontSize: 16.0);

  /*  Padding(
             padding: const EdgeInsets.all(16.0),
                child: Row(
                children: <Widget>[
                  Icon(
                     Icons.location_on,
                      color: Colors.white,
                     ),
             SizedBox(
               width: 16.0,
             ),
             PopupMenuButton(
               onSelected: (index){
                setState(() {
                  selectedLocationIndex=index;
                });
               },
                 child:Row(
                   children: <Widget>[
                     Text(Locations[selectedLocationIndex],style: dropDownLabelStyle,),
                     Icon(Icons.keyboard_arrow_down,color:Colors.white),
                   ],
                   ) ,
               itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
                     PopupMenuItem(
                       child: Text(Locations[0],style: dropDownMenuItemStyle,),
                       value: 0,
                     ),
                    PopupMenuItem(
                       child: Text(Locations[1],style: dropDownMenuItemStyle,),
                        value: 1,
                     ),
                   ],
                   ),
                  Spacer(),
                  Icon(Icons.settings,color:Colors.white),
                ],),
                 ),*/

                /*  SizedBox(
                height: 30.0,
              ),
             Padding(
                 padding: EdgeInsets.symmetric(horizontal: 32.0),
                  child: Material(
                   elevation: 5.0,
                   borderRadius: BorderRadius.all(
                    Radius.circular(30.0),),
                     child: TextField(
                       controller: TextEditingController(text: Locations[1]),
                       style: dropDownMenuItemStyle,
                       cursorColor: appTheme.primaryColor,
                       decoration:InputDecoration(
                         contentPadding: EdgeInsets.symmetric(horizontal: 32.0,vertical: 14.0),
                         suffixIcon: Material(
                           elevation: 2.0,
                           borderRadius: BorderRadius.all(
                             Radius.circular(30.0),),
                            child: Icon(Icons.search,color:Colors.black),
                         ),
                       border: InputBorder.none,
                       ),),
                   ),),*/




