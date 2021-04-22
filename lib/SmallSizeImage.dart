import 'package:flutter/material.dart';

Widget smallSizeImage(String image) {
  final String url=image;
  return Container(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Image(
        height: 70,
        width: 85,
        image: NetworkImage(
          url,
        ),
        fit: BoxFit.cover,
      ),
    ),
  );
}
