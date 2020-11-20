import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lstrv_app/book/generate_qr.dart';
import 'package:lstrv_app/book/scan_qr.dart';
class Mybooking extends StatefulWidget {
  @override
  _MybookingState createState() => _MybookingState();
}

class _MybookingState extends State<Mybooking> {
  Map data;
   showData() async{
    try{
  // ignore: deprecated_member_use
  CollectionReference collectionReference= await Firestore.instance.collection('Hotel');
  collectionReference.snapshots().listen((snapshot){
  // ignore: unused_local_variable
  List documents;
  setState(() {
    // ignore: deprecated_member_use
  documents=snapshot.documents;
    // ignore: deprecated_member_use
    data=snapshot.documents[2].data();
    // ignore: deprecated_member_use
   data=snapshot.documents[1].data();
    // ignore: deprecated_member_usedata=snapshot.documents[2].data();
  // ignore: deprecated_member_use
  data=snapshot.documents[4].data();
  });
  });}
  catch(e) {
  print(e.message);
  showDialog(
  context: context,
  builder: (context) {
  return AlertDialog(
  content: Text(e.message),
  );
  }
  );
  }}
  updateData() async{
    // ignore: deprecated_member_use
    CollectionReference collectionReference= Firestore.instance.collection('Hotel');
    // ignore: deprecated_member_use
    QuerySnapshot querySnapshot= await collectionReference.getDocuments();
    // ignore: deprecated_member_use
    querySnapshot.documents[2].reference.updateData({
      "Adults": "2",
      "Check IN":"October 10,2020",
      "Child": "0",
      "City Name": "Patna",
      "Email ID":" mallika1004@gmail.com",
      "Hotel Name": "Panache",
      "Mobile No.": "7903268594",
      "Name": "Mallika",
      "Room Type": "AC",
    });print("updated successfully");}
  Widget refreshBg() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(right: 20.0),
      color: Colors.red,
      child: const Icon(
        Icons.delete,
        color: Colors.white,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: new Text("My Bookings",style:TextStyle( color: Color(0xFFF47D15),fontSize:24.0,)),
      actions:<Widget>[
        PopupMenuButton(
          itemBuilder: (content) =>[
            PopupMenuItem(
              child: Text('Scan QR Code',
                style:TextStyle(
                  fontSize:20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),),
              //child: Icon(Icons.refresh,color:Colors.green,size:30.0),
              value: 1,
            ),
            PopupMenuItem(
              child: Text('Generate QR Code',
                style:TextStyle(
                  fontSize:20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),),
              //child: Icon(Icons.refresh,color:Colors.green,size:30.0),
              value: 2,
            ),],//PopupMenuItem(child: Text('Cancel'),//child: Icon(Icons.cancel,color:Colors.black,size:28.0),value: 3,),],
          onSelected: (int menu){
            if (menu == 1){
              Navigator.push(context,MaterialPageRoute(builder: (context) => ScanPage()));
            }
            if (menu == 2){
              Navigator.push(context,MaterialPageRoute(builder: (context) =>GeneratePage()));}
            },),
      ],
      ),// Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()));
      body: Container(
        child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('Hotel').snapshots(),
          // ignore: missing_return
          builder: (context, snapshot){
            if(snapshot.hasData){
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return new ListView(
                  // ignore: deprecated_member_use
                  children: snapshot.data.docs
                      .map((DocumentSnapshot documentSnapshot) {
                    return Dismissible(
                      key:ObjectKey(documentSnapshot.data().keys),
                      onDismissed: (direction) {
                        documentSnapshot.data().remove(index);
                      },
                      direction: DismissDirection.startToEnd,
                      background: refreshBg(),
                      child: Card(
                        child: ListTile(
                          leading: Icon(FontAwesomeIcons.bookmark,color:Colors.deepOrange),
                          title: Text(
                            documentSnapshot.data()['Name'],
                            style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black),
                          ),
                        ),
                      ),
                    );
                  }).toList());
            }
          }

        ),
      ));
  }
}
