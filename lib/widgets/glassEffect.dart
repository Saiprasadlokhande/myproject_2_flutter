import 'dart:ui';
import 'package:myproject_2_flutter/import_helper.dart';

Widget glassContainer({required double width, required double height}) {
  return Stack(children: [
    Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor.withOpacity(0.25),
            )
          ],
          border: Border.all(color: Colors.white.withOpacity(0.8), width: 1.0),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white.withOpacity(0.9),
              Colors.transparent,
              Colors.transparent,
            ],
            stops: const [0.0, 0.7, 1.0],
          ),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [customTile()],
        ),
      ),
    ),
    BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 5,
        sigmaY: 5,
      ),
      child: SizedBox(
        height: height,
        width: width,
      ),
    ),
    Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: kPrimaryColor.withOpacity(0.25),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [customTile()],
        ),
      ),
    ),
  ]);
}
