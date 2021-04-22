import 'package:flutter/material.dart';

Widget fiveStarsInRow() {
  return Row(
    children: [
      Icon(
        Icons.star_rate_rounded,
        color: Color(0xffF8A537),
        size: 18.0,
      ),
      Icon(
        Icons.star_rate_rounded,
        color: Color(0xffF8A537),
        size: 18.0,
      ),
      Icon(
        Icons.star_rate_rounded,
        color: Color(0xffF8A537),
        size: 18.0,
      ),
      Icon(
        Icons.star_half_rounded,
        color: Color(0xffF8A537),
        size: 18.0,
      ),
      Icon(
        Icons.star_border_rounded,
        color: Color(0xffF8A537),
        size: 18.0,
      ),
    ],
  );
}
