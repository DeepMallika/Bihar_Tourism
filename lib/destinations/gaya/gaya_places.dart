import 'package:flutter/material.dart';
import 'package:lstrv_app/destinations/gaya/gaya.dart';
import 'package:lstrv_app/utils/style.dart';
import 'package:lstrv_app/widget/gaya_widget.dart';

class Gaya_Places extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //leading: Icon(Icons.arrow_back, color: Colors.white),
        title: Text(
          "Places of Interest",
          style: appBarTextStyle,
        ),
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: Colors.black,
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(),
          ),
          Expanded(
            flex: 10,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Gaya_PlaceWidget(
                    place: places[index],
                    compactMode: false,
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 20,
                    width: 60,
                  );
                },
                itemCount: places.length),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          )
        ],
      ),
    );
  }
}
