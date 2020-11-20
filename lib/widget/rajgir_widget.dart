import 'package:flutter/material.dart';
import 'package:lstrv_app/destinations/rajgir/rajgir.dart';
import 'package:lstrv_app/destinations/rajgir/rajgir_details_page.dart';
import 'package:lstrv_app/utils/style.dart';
import 'package:palette_generator/palette_generator.dart';

import 'clipped_image.dart';
import 'name_widget.dart';

class Rajgir_PlaceWidget extends StatelessWidget {
  final Rajgir_Place place;
  final bool compactMode;

  Rajgir_PlaceWidget({this.place, this.compactMode = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _generatePalette(context, place.imagePath).then((_palette) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PlaceDetailsPage(place: place, palette: _palette)));
        });
      },
      child: Row(
        children: <Widget>[
          ClippedImage(imagePath: place.imagePath, compactMode: compactMode),
          SizedBox(width:30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              NameWidget(name: place.name, style: nameStyle),
              SizedBox(height: 14),
            ],
          )
        ],
      ),
    );
  }

  Future<PaletteGenerator> _generatePalette(context, String imagePath) async {
    PaletteGenerator _paletteGenerator = await PaletteGenerator.fromImageProvider(AssetImage(imagePath),
        size: Size(150, 150), maximumColorCount: 20);

    return _paletteGenerator;
  }
}