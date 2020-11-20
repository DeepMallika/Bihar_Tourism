import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

const TextStyle dropDownLabelStyle =
TextStyle(color: Colors.white, fontSize: 16.0);
const TextStyle dropDownMenuItemStyle =
TextStyle(color: Colors.black, fontSize: 16.0);

class hotel_booking extends StatefulWidget {
  @override
  _hotel_bookingState createState() => _hotel_bookingState();
}

class _hotel_bookingState extends State<hotel_booking> {
  var selectedLocationIndex= 0;
  String value = "";
  String _child;
  String _adults;
  String _roomt;
  List _adult =['0','1','2','3'];
  List _children =['0','1','2','3'];
  List _rtype =['AC','Non-AC'];
  List<DropdownMenuItem<String>> menuitems = List();
  bool disabledropdown = true;
   Map data;
  String guest_name,guest_phone,guest_email,guest_adult,guest_child,guest_rtype,guest_hname,guest_cname;
  DateTime cinDate;
  TimeOfDay time;
  getguest_name(name){
    this.guest_name=name;
  }
  getguest_phone(phone_num){
    this.guest_phone=phone_num;
  }
  getguest_email(email){
    this.guest_email=email;
  }
  getguest_adult(value){
    this.guest_adult=value;
  }
  getguest_child(value){
    this.guest_child=value;
  }
  getguest_rtype(value){
    this.guest_rtype=value;
  }
  getguest_hname(_value){
    this.guest_hname=_value;
  }
  getguest_cname(_value){
    this.guest_cname=_value;
  }

  final patna = {
    "1" : "Maurya Hotel",
    "2" : "Chankaya Hotel",
    "3" : "Hotel Patliputra",
  };

  final gaya = {
    "1" : "Hotel Virat Inn",
    "2" : "Clarks Inn Gaya",
    "3" : "Hotel Patliputra Vishnu Vihar",
  };


  final rajgir = {
    "1" : "Gargeee Gautam Vihar Resort",
    "2" : "Indo Hokke Hotel",
    "3" : "The Rajgir Residency Hotel ",
  };


  void populatepatna(){
    for(String key in patna.keys){
      menuitems.add(DropdownMenuItem<String>(
        child : Center(
          child: Text(
              patna[key]
          ),
        ),
        value: patna[key],
      ));
    }
  }

  void populategaya(){
    for(String key in gaya.keys){
      menuitems.add(DropdownMenuItem<String>(
        child : Center(
          child: Text(
              gaya[key]
          ),
        ),
        value: gaya[key],
      ));
    }
  }

  void populaterajgir(){
    for(String key in rajgir.keys){
      menuitems.add(DropdownMenuItem<String>(
        child : Center(
          child: Text(
              rajgir[key]
          ),
        ),
        value: rajgir[key],
      ));
    }
  }

  void selected(_value){
    if(_value == "Patna"){
      menuitems = [];
      populatepatna();
    }else if(_value == "Gaya"){
      menuitems = [];
      populategaya();
    }else if(_value == "Rajgir"){
      menuitems = [];
      populaterajgir();
    }
    setState(() {
      value = _value;
      disabledropdown = false;
    });
    getguest_cname(_value);
  }

  void secondselected(_value){
    setState(() {
  value = _value;
  });
  getguest_hname(_value);
  }

  // ignore: deprecated_member_use
    bookData(){

    try {

      Map<String, dynamic> demoData = {
        "Name": guest_name,
        "Mobile No.": guest_phone,
        "Email ID": guest_email,
        "City Name": guest_cname,
        "Hotel Name": guest_hname,
        "Adults": guest_adult,
        "Child": guest_child,
        "Room Type": guest_rtype,
        "Check IN": cinDate,
      };
      // ignore: deprecated_member_use
      CollectionReference collectionReference = Firestore.instance.collection(
          'Hotel');
      collectionReference.add(demoData);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text("Hotel Booked Successfully"),
            );
          }
      );
    }
    catch(e){
      print(e.message);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(e.message),
            );
          }
      );
    }
    }
 @override
  void initState(){
    super.initState();
    cinDate= DateTime.now();
    //time = TimeOfDay.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.black,
        title:Text("Hotel Booking" ,style:TextStyle( color: Color(0xFFF47D15),fontSize:24.0,)),),// Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()));),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal:5.0,vertical: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                    title:Text("Check IN \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t"
                        "${cinDate.year},${cinDate.month},${cinDate.day}"),
                   // trailing: Icon(Icons.keyboard_arrow_down),
                    onTap: _pickDate,
                  ),
                /* ListTile(
                    title:Text("Time\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t"
                 "${time.hour},${time.minute}"),
                    //trailing: Icon(Icons.keyboard_arrow_down),
                    onTap: _pickTime,),*/
                ],),),
          Padding(
            padding: EdgeInsets.only(left:30,right:20),
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(bottom: 6.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Name",
                      fillColor: Colors.black,
                      focusedBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                          color:Colors.blue,width:2.0,
                        ),
                      ),
                    ),
                    validator: (name) => name.isEmpty ? 'Please enter a name' : null,
                    onChanged: (String name){
                      getguest_name(name);
                    },
                  ),),
                Padding(padding: EdgeInsets.only(bottom: 6.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                      fillColor: Colors.black,
                      focusedBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                          color:Colors.blue,width:2.0,
                        ),
                      ),
                    ),
                    validator: (phone_num) => phone_num.isEmpty ? 'Please enter a phone number' : null,
                    onChanged: (String phone_num){
                      getguest_phone(phone_num);
                    }, ),),
                Padding(padding: EdgeInsets.only(bottom: 6.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      fillColor: Colors.black,
                      focusedBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                          color:Colors.blue,width:2.0,
                        ),
                      ),
                    ),
                    validator: (email) => email.isEmpty ? 'Please enter an email address' : null,
                    onChanged: (String email){
                      getguest_email(email);
                    },
                  ),),
                Padding(
                  padding: EdgeInsets.only(top:5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                  Text(
                    '\nCity Name \t\t\t\t\t\t\t\t\t\t\t\t\t',
                   //'$value',
                    style: TextStyle(
                      fontSize: 16.0, //fontWeight: FontWeight.bold,
                    ), //textAlign: TextAlign.center,
                  ),
                   Spacer(),
                      DropdownButton<String>(
                        items: [
                          DropdownMenuItem<String>(
                            value: "Patna",
                            child: Center(
                              child: Text("Patna"),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: "Gaya",
                            child: Center(
                              child: Text("Gaya"),
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: "Rajgir",
                            child: Center(
                              child: Text("Rajgir"),
                            ),
                          ),
                        ],
                        onChanged: (_value) => selected(_value),
                        hint: Text(
                            "Choose Option"
                        ),

                      ),
                    ],

                  ),),
                Padding(
                  padding: EdgeInsets.only(top:5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        ' Hotel Name',
                        style: TextStyle(
                          fontSize: 16.0,
                          //color: Colors.black, fontWeight: FontWeight.bold,
                        ),
                        //textAlign: TextAlign.center,
                      ),
                      Text(
                        '\nRoom Type',
                        style: TextStyle(
                          fontSize: 16.0,
                          //color: Colors.black, fontWeight: FontWeight.bold,
                        ),
                        //textAlign: TextAlign.center,
                      ),],),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      DropdownButton<String>(
                        items: menuitems,
                        onChanged: disabledropdown ? null : (_value) => secondselected(_value),
                        hint: Text(
                            "Choose Option"
                        ),
                        disabledHint: Text("Choose Option"),
                      ),

                      DropdownButton(
                        hint:Text("Choose Option"),
                        value: _roomt,
                        onChanged: (value){
                          getguest_rtype(value);
                          setState((){
                            _roomt=value;
                          });
                        },
                        items:_rtype.map((value){
                          return DropdownMenuItem(
                            value:value,
                            child:Text(value),);
                        }).toList(),
                      ),
                    ],
                  ),
                ],),),
                Padding(
                  padding: EdgeInsets.only(top:5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'No. of Adults',
                        style: TextStyle(
                          fontSize: 16.0,
                          //color: Colors.black, fontWeight: FontWeight.bold,
                        ),
                        //textAlign: TextAlign.center,
                      ),
                      Text(
                        '\nNo. of Childrens',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),//textAlign: TextAlign.center,
                ),],),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                      DropdownButton(
                        hint:Text("Choose Option"),
                        value: _adults ,
                        onChanged: (value){
                          setState((){
                            _adults=value;
                          });
                          getguest_adult(value);
                        },
                        items:_adult.map((value){
                          return DropdownMenuItem(
                            value:value,
                            child:Text(value),);
                        }).toList(),
                      ),
                      DropdownButton(
                        hint:Text("Choose Option"),
                        value: _child ,
                        onChanged: (value){
                          getguest_child(value);
                          setState((){
                            _child=value;
                          });
                        },
                        items:_children.map((value){
                          return DropdownMenuItem(
                            value:value,
                            child:Text(value),);
                        }).toList(),
                      ),],),],),
                ), ],),
          ),
          SizedBox(height: 30.0,),
          RaisedButton(
            color:Colors.deepOrangeAccent,
            shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24)),
            child: Text("Book Now",style:TextStyle(fontSize: 20.0,)),
            textColor:Colors.white,
            onPressed: (){
              bookData();
             // Navigator.push(context,MaterialPageRoute(builder: (context) => Mybooking()));
            },),

       /*   StreamBuilder<QuerySnapshot>(
            // ignore: deprecated_member_use
            stream:Firestore.instance.collection('Hotel').snapshots(),
            builder: (context, snapshot) {
              // ignore: missing_return
              if (snapshot.hasData) {
                // ignore: deprecated_member_use
                return Column(children: snapshot.data.documents.map((DocumentSnapshot document) {
                  return new Row(
                      // ignore: missing_return
                      children: <Widget>[
                        Expanded(child: Text(document.data()['Adults']),),
                        Expanded(child: Text(
                            document.data()["Check IN"].toDate().toString())),
                        Expanded(child: Text(document.data()['Child']),),
                        Expanded(child: Text(document.data()['City Name']),),
                        Expanded(child: Text(document.data()['Email ID']),),
                        Expanded(child: Text(document.data()['Hotel Name']),),
                        Expanded(child: Text(document.data()['Mobile No.']),),
                        Expanded(child: Text(document.data()['Name']),),
                        Expanded(child: Text(document.data()['Room Type']),),
                      ]);
                }).toList(),);
              }
            },
          )*/
        ],),
    );
  }
  _pickDate() async{
    DateTime date=await showDatePicker(
      context:context,
      firstDate: DateTime(DateTime.now().year-5),
      lastDate: DateTime(DateTime.now().year+5),
      initialDate: cinDate,
    );
    if (date != null)
      setState((){
        cinDate= date;
      });
  }

 /* _pickTime() async{
    TimeOfDay t=await showTimePicker(
      context:context,
      initialTime: time,
    );
    if (t != null)
      setState((){
        time=t;
      });
  }*/
}
