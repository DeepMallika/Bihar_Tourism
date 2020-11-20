import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel_Gallery_Pawapuri extends StatefulWidget {
  Carousel_Gallery_Pawapuri() : super();
  final String title = "Pawapuri Pictures";
  @override
  _Carousel_Gallery_PawapuriState createState() => _Carousel_Gallery_PawapuriState();
}

class _Carousel_Gallery_PawapuriState extends State<Carousel_Gallery_Pawapuri> {
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'https://cdn.s3waas.gov.in/s3f85454e8279be180185cac7d243c5eb3/uploads/bfi_thumb/2018031229-olwdzhtbhnuzv18kok112cjibcs6l103sush5wq9hm.jpg',
    'https://common.encyclopediaofjainism.com/images/f/f1/Pawapuri_%281%29.jpg',
    'https://c1.hiqcdn.com/uploadimages/travel/Pawapuri-9173_22.JPG',
    'https://www.hlimg.com/images/things2do/738X538/Jalmandir1_1506080084t.jpg',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            carouselSlider = CarouselSlider(
              height: 400.0,
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: true,
              reverse: false,
              enableInfiniteScroll: true,
              autoPlayInterval: Duration(seconds: 2),
              autoPlayAnimationDuration: Duration(milliseconds: 2000),
              pauseAutoPlayOnTouch: Duration(seconds: 10),
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              items: imgList.map((imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.lightGreenAccent,
                      ),
                      child: Image.network(
                        imgUrl,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(imgList, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? Colors.deepOrange : Colors.lightGreenAccent,
                  ),
                );
              }),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  onPressed: goToPrevious,
                  child: Text("<"),
                ),
                OutlineButton(
                  onPressed: goToNext,
                  child: Text(">"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  goToPrevious() {
    carouselSlider.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  goToNext() {
    carouselSlider.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.decelerate);
  }
}
