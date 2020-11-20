import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lstrv_app/pages/gallery/carousel_gallery_gaya.dart';
import 'package:lstrv_app/pages/gallery/carousel_gallery_patna.dart';
import 'package:lstrv_app/pages/gallery/carousel_gallery_pawapuri.dart';
import 'package:lstrv_app/pages/gallery/carousel_gallery_rajgir.dart';
import 'package:lstrv_app/pages/gallery/carousel_gallery_vaishali.dart';

class Grid_Gallery extends StatefulWidget {
  @override
  _Grid_GalleryState createState() => _Grid_GalleryState();
}

class _Grid_GalleryState extends State<Grid_Gallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        //leading: Icon(Icons.arrow_back, color: Colors.white),
        title: Text ('Gallery',
          style: new TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,color: Colors.deepOrange,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      
      body: new GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            new Container(
              child: new Card(
                margin: EdgeInsets.all(5.0),
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT2tYfcgiObDSJLgGR19a7Z9DKW6angYfkUQA&usqp=CAU",
                    height: 145.0,
                      width: 200.0,
                      fit: BoxFit.cover,
                    ),
                    new SizedBox(height: 5.0,),
                     GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Carousel_Gallery_Patna()));
                          },
                     child: Center(
                     child: new Text("Patna",
                    style: TextStyle(
                        fontSize: 22.0,
                         fontWeight: FontWeight.bold,
                        color: Colors.deepOrange,
                    ),),
                     ),),

                  ]
                ),
              ),
            ),
            new Container(
              child: new Card(
                margin: EdgeInsets.all(5.0),
                elevation: 20.0,
                child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTvjLapBlNDOZfqvuo1BSQpVGWJZ0a3bDLOBg&usqp=CAU",
                        height: 145.0,
                        width: 200.0,
                        fit: BoxFit.cover,
                      ),
                      new SizedBox(height: 5.0,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Carousel_Gallery_Gaya()));
                        },
                        child: Center(
                          child: new Text("Gaya",
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrange,
                            ),),
                        ),
                      ),
                    ]
                ),
              ),
            ),
              new Container(
                child: new Card(
                  margin: EdgeInsets.all(5.0),
                  elevation: 20.0,
                  child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTU2PBxDJF_hzftMY3vWExOL9oCXKGni_MQqg&usqp=CAU",
                          height: 145.0,
                          width: 200.0,
                          fit: BoxFit.cover,
                        ),
                        new SizedBox(height: 5.0,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Carousel_Gallery_Vaishali()));
                          },
                          child: Center(
                            child: new Text("Vaishali",
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange,
                              ),),
                          ),
                        ),
                      ]
                  ),
                ),
            ),
            new Container(
              child: new Card(
                margin: EdgeInsets.all(5.0),
                elevation: 20.0,
                child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSC5v5duXs41v5gJCHkJT7nl8y_qBA4KbQ5yw&usqp=CAU",
                        height: 145.0,
                        width: 200.0,
                        fit: BoxFit.cover,
                      ),
                      new SizedBox(height: 5.0,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Carousel_Gallery_Rajgir()));
                        },
                        child: Center(
                          child: new Text("Rajgir",
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrange,
                            ),),
                        ),
                      ),
                    ]
                ),
              ),
            ),
            new Container(
              child: new Card(
                margin: EdgeInsets.all(5.0),
                elevation: 20.0,
                child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQU1POf7Vbtos9RTls1fNppTNioQ_qzqQDsxw&usqp=CAU",
                        height: 145.0,
                        width: 200.0,
                        fit: BoxFit.cover,
                      ),
                      new SizedBox(height: 5.0,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Carousel_Gallery_Pawapuri()));
                        },
                        child: Center(
                          child: new Text("Pawapuri",
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrange,
                            ),),
                        ),
                      ),
                    ]
                ),
              ),
            ),
          ],
      )
    );
  }
}
