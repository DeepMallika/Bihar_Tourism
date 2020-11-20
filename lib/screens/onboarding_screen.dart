import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lstrv_app/screens/splash_screen.dart';
import 'package:lstrv_app/utils/style.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {final int _numPages = 6;
final PageController _pageController = PageController(initialPage: 0);
int _currentPage = 0;

List<Widget> _buildPageIndicator() {
  List<Widget> list = [];
  for (int i = 0; i < _numPages; i++) {
    list.add(i == _currentPage ? _indicator(true) : _indicator(false));
  }
  return list;
}

Widget _indicator(bool isActive) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 150),
    margin: EdgeInsets.symmetric(horizontal: 6.0),
    height: 8.0,
    width: isActive ? 24.0 : 16.0,
    decoration: BoxDecoration(
      color: isActive ? Colors.white : Colors.deepOrangeAccent,
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
  );
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.4, 0.7, 0.9],
            colors: [
              Colors.orangeAccent,
              Colors.orange,
              Colors.deepOrangeAccent,
              Colors.deepOrange,
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                height: 620.0,
                child: PageView(
                  physics: ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 360.0,
                            width: 450.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/img/sasaram.jpg',),
                                fit:BoxFit.fill,),
                            ),
                          ),
                          SizedBox (height: 10.0),
                          Text(
                            'INCREDIBLE BIHAR',
                            style: kTitleStyle,
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            'Biharis of the world "unite" is the call and "revival of Bihari pride", in each and every Bihari heart, is the motto.',
                            style: kSubtitleStyle,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 360.0,
                            width: 450.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/img/mahabodhi.jpg',),
                                fit:BoxFit.fill,),
                            ),
                          ),
                          SizedBox (height: 10.0),
                          Text(
                            'MAHABODHI TEMPLE!',
                            style: kTitleStyle,
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            'A UNESCO World Heritage Site, is an ancient, but much rebuilt and restored, Buddhist temple in Bodh Gaya',
                            style: kSubtitleStyle,
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 360.0,
                            width: 450.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/img/sasaram2.jpg',),
                                fit:BoxFit.fill,),
                            ),
                          ),
                          SizedBox (height: 10.0),
                          Text(
                            'DHUAN KUND!',
                            style: kTitleStyle,
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            'A pair of waterfall situated in the city of Sasaram. These two waterfalls have been utilised as a hydroelectricity source to generate 50–100 MW of electricity. ',
                            style: kSubtitleStyle,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 360.0,
                            width: 450.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/Patna/sabhyata_dwar.jpg',),
                                fit:BoxFit.fill,),
                            ),
                          ),
                          SizedBox (height: 10.0),
                          Text(
                            'SABHYATA DWAR!',
                            style: kTitleStyle,
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            'The Sabhyata Dwar or Civilization Gate is a sandstone arch monument located on the banks on River Ganga in the city of Patna in the Indian state of Bihar.',
                            style: kSubtitleStyle,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 360.0,
                            width: 450.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/nalanda/nu.jpg',),
                                fit:BoxFit.fill,),
                            ),
                          ),
                          SizedBox (height: 10.0),
                          Text(
                            'NALANDA UNIVERSITY RUINS!',
                            style: TextStyle(fontSize: 30,color:Colors.white,fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            'It Was a centre of learning in the ancient India.',
                            style: kSubtitleStyle,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 360.0,
                            width: 450.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/rajgir/gkbuddha.jpg',),
                                fit:BoxFit.fill,),
                            ),
                          ),
                          SizedBox (height: 10.0),
                          Text(
                            'GHORA KATORA!',
                            style: kTitleStyle,
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            'Ghora Katora literally translates as "Horse Bowl"'
                                'Lake resembles that of a horse and is surrounded by mountains on three of the sides',
                            style: kSubtitleStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(),
              ),
              _currentPage != _numPages - 1
                  ? Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomRight,
                  child: FlatButton(
                    onPressed: () {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(width: 10.0),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ],
                    ),
                  ),
                ),
              )
                  : Text(''),
            ],
          ),
        ),
       ),
    ),
    bottomSheet: _currentPage == _numPages - 1
        ? Container(
      height: 50.0,
      width: double.infinity,
      color: Colors.black,
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) => SplashScreen()));
        },
        child: Center(
          child: Text(
            'WELCOME  🙏  ',
            style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    )
        :Text(''),
  );
}
}

