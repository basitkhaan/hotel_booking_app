import 'package:flutter/material.dart';

Widget hotelCard() {
  return Center(
    child: Container(
      width: 270,
      height: 352,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: InkWell(
          onTap: () {},
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image(
                        height: 220,
                        // fit: BoxFit.fitHeight,
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1496417263034-38ec4f0b665a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Wrap(
                            direction: Axis.vertical,
                            spacing:
                            5, // to apply margin in the main axis of the wrap
                            children: [
                              Text(
                                "Monal Hotel",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Islamabad, Pakistan",
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Color(0xffC4C4C5),
                                ),
                              ),
                            ]),
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star_rate_rounded,
                                  color: Color(0xffF8A537),
                                  size: 20.0,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  color: Color(0xffF8A537),
                                  size: 20.0,
                                ),
                                Icon(
                                  Icons.star_rate_rounded,
                                  color: Color(0xffF8A537),
                                  size: 20.0,
                                ),
                                Icon(
                                  Icons.star_half_rounded,
                                  color: Color(0xffF8A537),
                                  size: 20.0,
                                ),
                                Icon(
                                  Icons.star_border_rounded,
                                  color: Color(0xffF8A537),
                                  size: 20.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    cardButtons(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget cardButtons() {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Container(
              height: 35,
              width: 120,
              decoration: BoxDecoration(
                boxShadow: [
                BoxShadow(
                color: Color(0xffF0F0F0),
                //offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,),],
                border: Border.all(
                  color: Colors.black12,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, bottom: 10),
                      child: Icon(
                          Icons.king_bed_outlined,
                          color: Colors.pink,
                          size: 20.0,
                      ),
                    ),
                    Text(
                      '4 Bedroom'
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 35,
            width: 80,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xffF0F0F0),
                  //offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,),],
              border: Border.all(
                color: Colors.black12,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(
                    Icons.wifi,
                    color: Colors.pink,
                    size: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(
                        'Wifi'
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

