import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:lstrv_app/screens/splash_screen.dart';

class Phone_Login extends StatefulWidget {
  @override
  _Phone_LoginState createState() => _Phone_LoginState();
}

class _Phone_LoginState extends State<Phone_Login> {
  String phoneNo, smssent, verificationId;
  get verifiedSuccess => null;
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> verfiyPhone() async{
    final PhoneCodeAutoRetrievalTimeout autoRetrieve = (String verId){
      this.verificationId = verId;
    };
    final PhoneCodeSent smsCodeSent= (String verId, [int forceCodeResent]) {
      this.verificationId = verId;
      smsCodeDialoge(context).then((value){
        print("Code Sent");
      });
    };
    final PhoneVerificationCompleted verifiedSuccess= (AuthCredential auth){};
    final PhoneVerificationFailed verifyFailed= (FirebaseAuthException e){
      print('${e.message}');
    };
    await auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
      timeout: const Duration(seconds: 5),
      verificationCompleted : verifiedSuccess,
      verificationFailed: verifyFailed,
      codeSent: smsCodeSent,
      codeAutoRetrievalTimeout: autoRetrieve,

    );

  }
  Future<bool> smsCodeDialoge(BuildContext context){
    return showDialog(context: context,
        barrierDismissible: false,
        builder: (BuildContext context){
          return new AlertDialog(
            title: Text('Enter OTP',style: TextStyle(color:Colors.lightBlueAccent)),
            content: TextField(
            decoration: InputDecoration(
            border: InputBorder.none,
              icon: Icon(Icons.sms ),
              ),
              onChanged: (value){
                this.smssent = value;
              },

            ),
            contentPadding: EdgeInsets.all(2.0),
            actions: <Widget>[
              RaisedButton(
                onPressed: (){
                  // ignore: deprecated_member_use
                  User firebaseUser = FirebaseAuth.instance.currentUser;
                  final uid = firebaseUser.uid;
                    if(uid != null){
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context)=> SplashScreen()));
                    }
                    else{
                      Navigator.of(context).pop();
                      signIn(smssent);
                    }
                },
                child: Text('Done',
                  style:TextStyle(color: Colors.white) ,),
              ),
            ],

          );
        }
    );
  }
  Future<void> signIn(String smsCode) async{
    // ignore: deprecated_member_use
    final AuthCredential credential = PhoneAuthProvider.getCredential(
      verificationId: verificationId,
      smsCode: smsCode,);

    await auth.signInWithCredential(
        credential).then((uid) {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) => SplashScreen()));
    }).catchError((e){
      print(e);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
         Text('PhoneNumber Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(Icons.phone ),
                //labelText: 'Phone',
                hintText: 'Phone number with +(Country number)',
              ),
              onChanged: (value){
                this.phoneNo= value;
              },
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(12.0),
            ),
            padding: EdgeInsets.all(16),
            onPressed: verfiyPhone,
            child: Text("Send Code",
              style: TextStyle(color: Colors.white),),
            elevation: 7.0,
            color: Colors.blue,
          )
        ],
      ),

    );
  }
}