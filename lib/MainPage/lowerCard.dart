import 'package:flutter/material.dart';

Widget smallCard() {
  return ListView(
    children: [
      lowerCard(),
      lowerCard(),
      lowerCard(),
    ],
  );
}

Widget lowerCard() {
  return Container(
    height: 100,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                clipBehavior: Clip.antiAlias,
                shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image(
                      height: 90,
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1496417263034-38ec4f0b665a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Monal Hotel",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Islamabad, Pakistan",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xffC4C4C5),
                      ),
                    ),
                    Row(
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
