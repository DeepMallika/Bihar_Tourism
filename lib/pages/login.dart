import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:lstrv_app/components/already_have_an_account_acheck.dart';
import 'package:lstrv_app/pages/forgot_password.dart';
import 'package:lstrv_app/pages/phone_login.dart';
import 'package:lstrv_app/screens/splash_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginUI extends StatefulWidget {
  @override
   _LoginUIState createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  final _auth=FirebaseAuth.instance;
  String _email;
  String _password;
final _formkey=GlobalKey<FormState>();
  bool saveAttempted=false;
  /*Future<bool> validatePassword(String password) async {
    var firebaseUser = await _auth.currentUser;

    // ignore: deprecated_member_use
    var authCredentials = EmailAuthProvider.getCredential(
        email: firebaseUser.email, password: password);
    try {
      var authResult = await firebaseUser
          .reauthenticateWithCredential(authCredentials);
      return authResult.user != null;
    } catch (e) {
      print(e);
      return false;
    }
  }*/
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: Stack(
        children: <Widget>[
          Container(
            //     margin: EdgeInsets.only(top:h/15),
            height: h/0.4,
            width: w,
            child: RotatedBox(
              quarterTurns: 0,
              child: FlareActor(
                'assets/images/curve.flr',
                animation: 'Flow',
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fill,
                // isPaused: x,
              ),
            ),
          ),

          Container(
            //width:400.0,
              padding:EdgeInsets.symmetric(horizontal:20),
              margin: EdgeInsets.only(top:h/2),
              alignment: Alignment.center,
              child:Form(
                key:_formkey,
                child:Column(
                //  crossAxisAlignment: CrossAxisAlignment.start,
                //  mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  TextFormField(
                    // ignore: deprecated_member_use
                    autovalidate: saveAttempted,
                    onChanged: (textValue) {
                      setState(() {
                        _email = textValue;
                      });
                    },
                    validator: (emailValue) {
                      if (emailValue.isEmpty) {
                        return 'This field is mandatory';
                      }

                      String p = "[a-zA-Z0-9\+\.\_\%\-\+]{1,256}" +
                          "\\@" +
                          "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}" +
                          "(" +
                          "\\." +
                          "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}" +
                          ")+";
                      RegExp regExp = new RegExp(p);

                      if (regExp.hasMatch(emailValue)) {
                        // So, the email is valid
                        return null;
                      }

                      return 'This is not a valid email';
                    },
                    decoration: InputDecoration(
                      errorStyle: TextStyle(
                        color: Colors.black,
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          )),
                      hintText: 'Enter Email',
                      hintStyle: TextStyle(color: Colors.black.withOpacity(0.6)),
                      focusColor: Colors.black,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                    ),
                  ),
                  SizedBox(height:10),
                  TextFormField(
                    // ignore: deprecated_member_use
                    autovalidate: saveAttempted,
                    onChanged: (textValue) {
                      setState(() {
                        _password = textValue;
                      });
                    },
                    validator: (pwValue) {
                      if (pwValue.isEmpty) {
                        return 'This field is mandatory';
                      }
                      if (pwValue.length < 8) {
                        return 'Password must be at least 8 characters';
                      }

                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      errorStyle: TextStyle(
                        color: Colors.black,
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          )),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.black.withOpacity(0.6)),
                      focusColor:Colors.black,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.0,
                    ),
                  ),
                  SizedBox(height:30),
                  Container(
                    // margin: EdgeInsets.only(top:h/80,right:h/15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("Sign in",style: TextStyle(color: Color(0xff854bb0),fontSize: 24,fontWeight: FontWeight.w500),),
                        Container(
                          //  margin: EdgeInsets.only(top:h/20),
                          height: h / 12,
                          width: h / 12,
                          child: RaisedButton(
                            color: Color(0xff854bb0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)
                            ),
                            elevation: 3,
                            child: Icon(Icons.arrow_forward,color: Colors.white,size: 35,),
                            onPressed: () async{
                              _formkey.currentState.validate();
                              try{
                                final user = _auth.signInWithEmailAndPassword(
                                    email: _email,password: _password).then((user) =>

                                     Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return SplashScreen();
                                          },
                                         )),
                                );
                              }
                              catch(e){
                                print(e);
                              }

                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left:140.0),
                    child: new FlatButton(
                      child: new Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Colors.black, fontSize: 16,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,),
                         textAlign: TextAlign.end,
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen()));
                       // validatePassword(_password);
                      },
                    ), ),
                  /*   SizedBox(height:50),
                  Text(
                    "OR",
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 32,
                        fontWeight: FontWeight.w600),
                  ),*/
                  SizedBox(height: 26),
                  Container(
                    margin: EdgeInsets.only(right:h/26),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        //SizedBox(height: 10,),
                        AlreadyHaveAnAccountCheck(
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return SignUp();
                                },),);},),],),
                  ),],),),
          ),],),);
  }
}
GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['profile', 'email']);
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _auth = FirebaseAuth.instance;
  String _email;
  String _password;

  final _formkey = GlobalKey<FormState>();

  // ignore: deprecated_member_use
  /*final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  Future<FirebaseUser> _signIn(BuildContext context) async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =await googleUser.authentication;
    // ignore: deprecated_member_use
    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    // ignore: deprecated_member_use
    final FirebaseUser user=(await _firebaseAuth.signInWithCredential(credential)).user;}
    ProviderDetails providerInfo = new ProviderDetails(user.providerId);
    List<ProviderDetails> providerData = new List<ProviderDetails>();
    providerData.add(providerInfo);

    UserDetails details = new UserDetails(
      user.providerId,
      user.displayName,
      // ignore: deprecated_member_use
      user.photoUrl,
      user.email,
      providerData,
    );
    Navigator.push(
      context,
      new MaterialPageRoute(
        builder: (context) => new ProfileScreen(detailsUser: details),
      ),
    );
    return user;  }
  DateTime dates;*/
  GoogleSignInAccount _currentUser;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount account){
      setState(() {
        _currentUser = account;
      });
    });
    _googleSignIn.signInSilently();
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery
        .of(context)
        .size
        .height;
    double w = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          height: h / 1.4,
          child: FlareActor(
            'assets/images/curve.flr',
            animation: 'Flow',
            alignment: Alignment.bottomCenter,
            fit: BoxFit.cover,
            // isPaused: x,
          ),
        ),

        Container(
          margin: EdgeInsets.only(top: w / 4, left: w / 7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Create ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,

                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Account ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 800.0,
          width: 400.0,
          padding: EdgeInsets.symmetric(horizontal: 26),
          margin: EdgeInsets.only(top: h / 3),
          //height: h/2,
          child: Form(
            key: _formkey,
            child: Column(
              //    mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                TextFormField(
                  validator: (emailValue) {
                    if (emailValue.isEmpty) {
                      return 'This field is mandatory';
                    }

                    String p = "[a-zA-Z0-9\+\.\_\%\-\+]{1,256}" +
                        "\\@" +
                        "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}" +
                        "(" +
                        "\\." +
                        "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}" +
                        ")+";
                    RegExp regExp = new RegExp(p);

                    if (regExp.hasMatch(emailValue)) {
                      // So, the email is valid
                      return null;
                    }

                    return 'This is not a valid email';
                  },
                  decoration: InputDecoration(labelText: "Email"),
                  onChanged: (value) {
                    _email = value;
                  },
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                  ),
                ),
                TextFormField(
                  validator: (pwValue) {
                    // ignore: missing_return
                    if (pwValue.isEmpty) {
                      return 'This field is mandatory';
                    }
                    if (pwValue.length < 8) {
                      return 'Password must be at least 8 characters';
                    }
                    return null;
                  },
                  decoration: InputDecoration(labelText: "Passowrd"),
                  onChanged: (value) {
                    _password = value;
                  },
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 26),
                      margin: EdgeInsets.only(right: w / 15, top: 10),
                      height: h / 15,
                      child: RaisedButton(
                        color: Color(0xff854bb0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70)
                        ),
                        elevation: 3,
                        child: Icon(Icons.arrow_forward, color: Colors.white,
                          size: 35,),
                        onPressed: () async {
                          _formkey.currentState.validate();
                          try {
                            final newuser = await _auth
                                .createUserWithEmailAndPassword(
                              email: _email, password: _password,
                            );
                            Fluttertoast.showToast(msg: "Account Created Successfully");
                            /*.then(signedInUser){
                         _firestore.collection('users')
                             .add({'email': email,'password': password,})
                             .then(value){*/
                            if (newuser != null) {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return LoginUI();
                                  },
                                ),
                              );
                            }
                          }

                          catch (e) {
                            print(e);
                          }
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 60,),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Or Connect With",
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                         /* RaisedButton(
                      onPressed: () {
                       signInWithGoogle().then((result) {
                          if (result != null) {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) {
                                  return SplashScreen();
                                },
                              ),
                            );
                          }
                        });
                      },
                        child: Text(
                          '  Sign in with Google',
                          style: TextStyle(fontSize: 14),
                        ),
                  ),*/

          RaisedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Phone_Login()));
            },
            child: Text(
              '  Sign in with Phone',
              style: TextStyle(fontSize: 14),
            ),
          ),


                        ],),
                    ],),),
              ],
            ),
          ),
        ),
      ],),
    );
  }}
/*Widget _buildBody() {
    if (_currentUser != null) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          ListTile(
            leading: GoogleUserCircleAvatar(
              identity: _currentUser,
            ),
            title: Text(_currentUser.displayName ?? ''),
            subtitle: Text(_currentUser.email ?? ''),
          ),
          RaisedButton(
            onPressed: _handleSignOut,
            child: Text('SIGN OUT'),
          )
        ],
      );
    }
    else{
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          //Text('You are not signed in..'),
          RaisedButton(
            onPressed: _handleSignIn,
            child: Text('SIGN IN with google'),
          ),
          RaisedButton(
            onPressed:  (){Navigator.push(context, MaterialPageRoute(
                builder: (context) => Phone_Login()));},
            child: Text('SIGN IN with phone'),
          )
        ],
      );
    }
  }
}*/
Future<void> _handleSignIn() async{
  try{
    await _googleSignIn.signIn();
  }catch(error){
    print(error);
  }
}
Future<void> _handleSignOut() async{
  _googleSignIn.disconnect();
}
class UserDetails {
  final String providerDetails;
  final String userName;
  final String photoUrl;
  final String userEmail;
  final List<ProviderDetails> providerData;

  UserDetails(this.providerDetails,this.userName, this.photoUrl,this.userEmail, this.providerData);
}

class ProviderDetails {
  ProviderDetails(this.providerDetails);
  final String providerDetails;
}

