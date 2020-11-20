import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dio/dio.dart';
import 'package:lstrv_app/destinations/gaya/gaya_places.dart';
import 'package:lstrv_app/destinations/patna/patna_places.dart';
import 'package:lstrv_app/destinations/pawapuri/pawapuri_places.dart';
import 'package:lstrv_app/destinations/rajgir/rajgir_places.dart';
import 'package:lstrv_app/destinations/vaishali/vaishali_places.dart';

class Destination_Screen extends StatefulWidget {
  @override
  _Destination_ScreenState createState() => _Destination_ScreenState();
}

class _Destination_ScreenState extends State<Destination_Screen> {
  final dio = new Dio(); // for http requests
  Widget _appBarTitle = new Text('Destinations',style: TextStyle(color: Colors.deepOrange,fontSize: 24.0,),);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildBar(context),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: myDetailsContainer1(),
                          ),
                        ),
                        Container(
                          width: 220,
                          height: 120,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.topRight,
                              image: NetworkImage(
                                // "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS6npn3HLHtQc5yPW0IRNHi1itCqohFQmwEwg&usqp=CAU"),
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQJoaYdkD9PFoNm5ZNUeInAoKDO21JHLm448g&usqp=CAU"),
                            ),
                          ),),
                      ],)
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: myDetailsContainer2(),
                          ),
                        ),

                        Container(
                          width: 220,
                          height: 120,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.topRight,
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR6qGEpM7p7A_BG_NGEqdBTq3kJA1wElO58Lg&usqp=CAU"),
                            ),
                          ),),
                      ],)
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: myDetailsContainer3(),
                          ),
                        ),

                        Container(
                          width: 220,
                          height: 150,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.topRight,
                              image: NetworkImage(
                                  "https://4.bp.blogspot.com/-wC8JO69I5-I/TwVTxC_dOeI/AAAAAAAAD9U/XSuG5kShwD0/s400/vaishali.gif"),
                            ),
                          ),),
                      ],)
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: myDetailsContainer4(),
                          ),
                        ),

                        Container(
                          width: 220,
                          height: 110,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.topRight,
                              image: NetworkImage(
                                  "https://www.holidayinfy.com/wp-content/uploads/2020/08/Rajgir-Bihar.jpg"),
                            ),
                          ),),
                      ],)
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: myDetailsContainer5(),
                          ),
                        ),

                        Container(
                          width: 190,
                          height: 120,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.contain,
                              alignment: Alignment.topRight,
                              image: NetworkImage(
                                  "https://www.holidify.com/images/cmsuploads/compressed/4796_20190412135647.jpg"),
                            ),
                          ),),
                      ],)
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }

  Widget myDetailsContainer1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
            child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Patna_Places()));
                },
                child: Text("Patna",
                  style: TextStyle(color: Color(0xffe6020a),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),)),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(child: Row(children: <Widget>[
            Container(child: Text("4.0",
              style: TextStyle(color: Colors.black54, fontSize: 16.0,),)),
            Container(child: Icon(
              FontAwesomeIcons.solidStar, color: Colors.amber, size: 13.0,),),
            Container(child: Icon(
              FontAwesomeIcons.solidStar, color: Colors.amber, size: 13.0,),),
            Container(child: Icon(
              FontAwesomeIcons.solidStar, color: Colors.amber, size: 13.0,),),
            Container(child: Icon(
              FontAwesomeIcons.solidStar, color: Colors.amber, size: 13.0,),),
          ],)),
        ),
        Container(child: Text(//"The city of Buddha",
          "Capital of Bihar",
          style: TextStyle(color: Colors.black54,
              fontSize: 14.0,
              fontWeight: FontWeight.bold),)),
      ],
    );
  }


  Widget myDetailsContainer2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>Gaya_Places()));
                },
                child: Text("Gaya",
                style: TextStyle(color: Color(0xffe6020a),
                fontSize: 20.0,
                fontWeight: FontWeight.bold),)),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(child: Row(children: <Widget>[
            Container(child: Text("4.7",
              style: TextStyle(color: Colors.black54, fontSize: 14.0,),)),
            Container(child: Icon(
              FontAwesomeIcons.solidStar, color: Colors.amber, size: 12.0,),),
            Container(child: Icon(
              FontAwesomeIcons.solidStar, color: Colors.amber, size: 12.0,),),
            Container(child: Icon(
              FontAwesomeIcons.solidStar, color: Colors.amber, size: 12.0,),),
            Container(child: Icon(
              FontAwesomeIcons.solidStar, color: Colors.amber, size: 12.0,),),
            Container(child: Icon(
              FontAwesomeIcons.solidStarHalf, color: Colors.amber,
              size: 15.0,),),
          ],)),
        ),
        Container(child: Text(//"The city of Buddha",
          "Sanctified in the \nJain, Hindu, and\nBuddhist religions",
          style: TextStyle(color: Colors.black54,
              fontSize: 12.0,
              fontWeight: FontWeight.bold),)),
      ],
    );
  }

  Widget myDetailsContainer3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
          child: GestureDetector(
          onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Vaishali_Places()));
          },
          child: Text("Vaishali",
            style: TextStyle(color: Color(0xffe6020a),
                fontSize: 22.0,
                fontWeight: FontWeight.bold),)),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(child: Row(children: <Widget>[
            Container(child: Text("3.4",
              style: TextStyle(color: Colors.black54, fontSize: 18.0,),)),
            Container(child: Icon(
              FontAwesomeIcons.solidStar, color: Colors.amber, size: 15.0,),),
            Container(child: Icon(
              FontAwesomeIcons.solidStar, color: Colors.amber, size: 15.0,),),
            Container(child: Icon(
              FontAwesomeIcons.solidStar, color: Colors.amber, size: 15.0,),),
          ],)),
        ),
        Container(child: Text("The Land of Buddha \nand Mahavira",
          style: TextStyle(color: Colors.black54,
              fontSize: 16.0,
              fontWeight: FontWeight.bold),)),
      ],
    );
  }

  Widget myDetailsContainer4() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
            child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Rajgir_Places()));
                },
          child: Text("Rajgir",
            style: TextStyle(color: Color(0xffe6020a),
                fontSize: 22.0,
                fontWeight: FontWeight.bold),)),),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(child: Row(children: <Widget>[
            Container(child: Text("3.9", style: TextStyle(
              color: Colors.black54, fontSize: 18.0,),)),
            Container(child: Icon(
              FontAwesomeIcons.solidStar, color: Colors.amber, size: 15.0,),),
            Container(child: Icon(
              FontAwesomeIcons.solidStar, color: Colors.amber, size: 15.0,),),
            Container(child: Icon(
              FontAwesomeIcons.solidStar, color: Colors.amber, size: 15.0,),),
            Container(child: Icon(
              FontAwesomeIcons.solidStarHalf, color: Colors.amber,
              size: 15.0,),),
          ],)),
        ),
        Container(child: Text("Buddhism, Jainism \n and serenity",
    style: TextStyle(color: Colors.black54,
    fontSize: 16.0,
    fontWeight: FontWeight.bold),)),
      ],
    );
  }
  Widget myDetailsContainer5() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
          child: GestureDetector(
          onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Pawapuri_Places()));
          },
          child: Text("Pawapuri",
            style: TextStyle(color: Color(0xffe6020a), fontSize: 22.0,fontWeight: FontWeight.bold),)),
          ),),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(child: Row(children: <Widget>[
            Container(child: Text("3.6", style: TextStyle(
              color: Colors.black54, fontSize: 16.0,),)),
            Container(child: Icon(
              FontAwesomeIcons.solidStar, color: Colors.amber, size: 15.0,),),
            Container(child: Icon(
              FontAwesomeIcons.solidStar, color: Colors.amber, size: 15.0,),),
            Container(child: Icon(
              FontAwesomeIcons.solidStar, color: Colors.amber, size: 15.0,),),
            Container(child: Icon(
              FontAwesomeIcons.solidStarHalf, color: Colors.amber,
              size: 15.0,),),
          ],)),
        ),
        Container(child: Text("Holy site for the Jains.",
          style: TextStyle(color: Colors.black54,
              fontSize: 16.0,
              fontWeight: FontWeight.bold),)),
      ],
    );
}

  Widget _buildBar(BuildContext context) {
    return new AppBar(
      centerTitle: true,
      title: _appBarTitle,
      backgroundColor: Colors.black,
    );
  }
}