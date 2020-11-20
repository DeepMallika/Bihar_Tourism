import 'package:flutter/material.dart';
import 'package:lstrv_app/destinations/gaya/gaya.dart';
import 'package:lstrv_app/utils/style.dart';
import 'package:lstrv_app/widget/clipped_image.dart';
import 'package:lstrv_app/widget/name_widget.dart';
import 'package:palette_generator/palette_generator.dart';


class PlaceDetailsPage extends StatelessWidget {
  final Gaya_Place place;
  final PaletteGenerator palette;

  PlaceDetailsPage({this.place, this.palette});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            place.imagePath,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fitHeight,
          ),
          Container(
            color: palette.darkMutedColor.color.withOpacity(0.8),
          ),
          Positioned(
            top: 60,
            right: 20,
            child: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.white,
                size: 40,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:40, right: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 120,
                ),
                NameWidget(
                  name: place.name,
                  style: nameBigStyle.copyWith(color: palette.lightMutedColor.color),
                ),
                SizedBox(height: 20),
                Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Text(place.description, style: descriptionStyle),
                  ),
                ),
                SizedBox(height: 20),
                Text("Attractions".toUpperCase(), style: descriptionBoldStyle),
                SizedBox(height: 8),
                Container(
                  height: 100,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return ClippedImage(compactMode: true, imagePath: places[index].imagePath);
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 12);
                      },
                      itemCount: places.length),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}