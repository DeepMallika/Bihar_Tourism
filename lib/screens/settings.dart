import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lstrv_app/pages/contact_us.dart';
import 'package:lstrv_app/pages/feedback.dart';
import 'package:lstrv_app/pages/login.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
        ),
        title: Text('Settings',
          style: TextStyle(
              color:Colors.deepOrange,fontWeight: FontWeight.bold,fontSize: 24),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
           Column(
              children: [
        Center(
        child: Stack(
        children: [
        Container(
        width: 100,
          height: 80,
          decoration: BoxDecoration(
              border: Border.all(
                  width: 4,
                  color: Theme
                      .of(context)
                      .scaffoldBackgroundColor),
              boxShadow: [
                BoxShadow(
                    spreadRadius: 2,
                    blurRadius: 10,
                    color: Colors.black.withOpacity(0.1),
                    offset: Offset(0, 10))
              ],
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/img/user.png"),
              )),),
        Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 4,
                  color: Theme
                      .of(context)
                      .scaffoldBackgroundColor,
                ),
                color: Colors.green,
              ),
                child: Icon(
                Icons.edit,
                color: Colors.white,
              ),
            )),
          //SizedBox(height: 20,),
        ],
      ),
    ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.volume_up,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Notifications",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.deepOrangeAccent),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            buildNotificationOptionRow("Received Notification", true),
            buildNotificationOptionRow("Received App Updates", false),
            buildNotificationOptionRow("Account activity", true),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            buildAccountOptionRow(context, "Content settings"),
            buildAccountOptionRow(context, "Language"),
            buildAccountOptionRow(context, "Privacy and security"),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation:4.0,
              margin:const EdgeInsets.fromLTRB(10.0, 8.0, 4.0, 10.0),
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
             child:Column(
                children:<Widget>[
                  ListTile(
                    leading: Icon(Icons.contact_page),
                    title:Text('Contact Us'),
                    trailing:Icon(Icons.keyboard_arrow_right),
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Contact_us()));},
                  ),
                  Divider(height: 15, thickness: 2,),
                  ListTile(
                    leading: Icon(Icons.feedback),
                    title:Text('Feedback'),
                    trailing:Icon(Icons.keyboard_arrow_right),
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Feedback_Pg()));},
                  ),
                ],
             ),
            ),
            Center(
              child: OutlineButton(
                padding: EdgeInsets.symmetric(horizontal: 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),),
                onPressed: () {
                 _signOut();
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context)=>LoginUI()));
                },
                child: Text("SIGN OUT",
                    style: TextStyle(
                        fontSize: 16, letterSpacing: 2.2, color: Colors.deepOrangeAccent,fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
    ],),
      ), );
  }

  Row buildNotificationOptionRow(String title, bool isActive) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]),
        ),
        Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              value: isActive,
              onChanged: (bool val) {},
            ))
      ],
    );
  }

  GestureDetector buildAccountOptionRow(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Option 1"),
                    Text("Option 2"),
                    Text("Option 3"),
                  ],
                ),
                actions: [
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Close")),
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}

_signOut() async {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  await _firebaseAuth.signOut();
}
