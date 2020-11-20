import 'package:flutter/material.dart';
import 'package:lstrv_app/utils/style.dart';

class About_Page extends StatefulWidget {
  @override
  _About_PageState createState() => _About_PageState();
}
class _About_PageState extends State<About_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title:Text('Our Sacred Bihar',
            style: TextStyle(
              color: Colors.deepOrange, fontWeight: FontWeight.bold,fontSize: 24,
            ),),
      ),
      body: Stack(
        fit : StackFit.expand,
        children: <Widget>[
          Align(
            alignment: Alignment(0,-1),
            child: Container(
             height: 230.0,
              decoration:BoxDecoration(
                 // shape: BoxShape.circle,
                  image:DecorationImage(
                    image : AssetImage("assets/images/img/apnabihr.jpg"),
                    fit:BoxFit.cover,
                  )
                ),
            ),
          ),
         Positioned(
          left: 0.0,
         right: 0.0,
         bottom: 0.0,
         child: ClipRRect(
            borderRadius : BorderRadius.vertical(top: Radius.circular(50.0)),
          child : Container(
              height: 460.0,
            color: Colors.orange,
            child: Padding(
              padding: EdgeInsets.all(25.0),
                child: Column(
                  children:<Widget>[
                    Text(
                      " Blissful bihar",
                     style: TextStyle(
                    color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold,fontStyle: FontStyle.normal),
                    ),
                  ],
                ),
              ),
            ),
          ),),
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: ClipRRect(
              borderRadius : BorderRadius.vertical(top: Radius.circular(50.0)),
              child : Container(
                height: 390.0,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(32.0),
                  child: Column(
                    children:<Widget>[
                      Text(" Bihar travel and tourism features a large number of tourist destinations spread in various parts of the state. It is located in northern India along the eastern Gangetic Plains."
                          " Bihar has a significant place in the cultural history of India for being the birthplace of Buddhism and Jainism. Tourists can encounter some of the finest Mughal and Hindu architectural"
                          "expertise in this place. Bihar was the cradle of a thriving ancient civilization, an epicenter where some of the major religions of India like Buddhism and Jainism originated and Hinduism "
                          "gained momentum. The state draws its name from 'vihara', meaning Buddhist monastery since the place in the past was a major learning centre of Buddhism. ",
                        style: TextStyle(
                          color: Colors.green,fontSize: 16,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,
                        ),)
                    ],
                  ),
                ),
              ),
            ),),
        ],
      ),
    );
  }
}
