import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Contact_us extends StatefulWidget {
  @override
  _Contact_usState createState() => _Contact_usState();
}

class _Contact_usState extends State<Contact_us> {
  String name,email,msg;
  Map data;

  getname(name){
    this.name=name;
  }
  getemail(email){
    this.email=email;
  }
  getmsg(msg){
    this.msg=msg;
  }

  contactData(){
    Map<String, dynamic> conData = {
      "Name": name,
      "Email ID": email,
      "Message": msg,
    };
    // ignore: deprecated_member_use
    CollectionReference collectionReference= Firestore.instance.collection('Contact');
    collectionReference.add(conData);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('Contact Us',style: TextStyle(color:Colors.white,fontSize:20.0,fontWeight: FontWeight.bold),),
        backgroundColor:Colors.deepOrange ,
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "Contact",
            style: TextStyle(fontSize:32.0,fontWeight: FontWeight.bold),),
          Padding(
            padding:const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  filled:true,
                   fillColor: Colors.white,
                  hintText: "Name",
                  border:InputBorder.none,
                ),
                validator: (name) => name.isEmpty ? 'Please enter a name' : null,
                onChanged: (String name){
                  getname(name);
                },
              ),
              SizedBox(height: 8.0,),
              TextFormField(
                decoration: InputDecoration(
                  filled:true,
                  fillColor: Colors.white,
                  hintText: "Email",
                  border:InputBorder.none,
                ),
                validator: (email) => email.isEmpty ? 'Please enter an email address' : null,
                onChanged: (String email){
                  getemail(email);
                },
              ),
              SizedBox(height: 8.0,),
              TextFormField(
                maxLines: 7,
                decoration: InputDecoration(
                  filled:true,
                  fillColor: Colors.white,
                  hintText: "Message",
                  border:InputBorder.none,
                ),
                validator: (msg) => msg.isEmpty ? 'Please enter a message' : null,
                onChanged: (String msg){
                  getmsg(msg);
                },
              ),
              SizedBox(height: 8.0,),
              MaterialButton(
                height:60.0,
                minWidth: double.infinity,
                color:Colors.black,
               onPressed: (){contactData();},
              child:Text("SUBMIT",style:TextStyle(fontWeight: FontWeight.bold,color:Colors.white,)),
              ), ]
          ),),
        ],
      )
    );
  }
}
