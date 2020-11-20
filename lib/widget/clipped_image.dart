import 'package:flutter/material.dart';

class ClippedImage extends StatelessWidget {

  final String imagePath;
  final bool compactMode;
  static const BorderRadius _cardBorderRadius = const BorderRadius.all(Radius.circular(12));

  ClippedImage({this.imagePath, this.compactMode});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: compactMode ? 0: 8,
      borderRadius: _cardBorderRadius,
      child: ClipRRect(
        borderRadius: _cardBorderRadius,
        child: Image.asset(
          imagePath,
          height: compactMode ? 100 : 150,
          width: compactMode ? 80 : 110,
          fit: BoxFit.fitHeight,
        ),
      ),

    );
  }
}