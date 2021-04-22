import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/FiveStars.dart';
import 'package:hotel_booking/SmallSizeImage.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.grey.shade100,
            child: Image(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1496417263034-38ec4f0b665a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: lowerPartOfSecondPage(context),
          ),
        ],
      ),
    );
  }
}

Widget lowerPartOfSecondPage(BuildContext context) {
  return Container(
    color: Colors.grey.shade100,
    child: Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.grey.shade100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Monal Hotel',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(
                            Icons.location_on_rounded,
                            color: Color(0xffF76E78),
                            size: 18.0,
                          ),
                        ),
                        Text(
                          'Islamabad, Pakistan',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  color: Colors.grey.shade100,
                  child: fiveStarsInRow(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 27),
            child: Text(
              'This house is very Modern, which is close to the station and is in the center of business.',
              style: TextStyle(
                  fontSize: 13, color: Colors.grey, letterSpacing: 1.1),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Text(
              'Facilites',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 18, right: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/third');
                  },
                  child: smallSizeImage(
                    'https://images.unsplash.com/photo-1496417263034-38ec4f0b665a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/third');
                  },
                  child: smallSizeImage(
                    'https://images.unsplash.com/photo-1496417263034-38ec4f0b665a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/third');
                  },
                  child: smallSizeImage(
                    'https://images.unsplash.com/photo-1496417263034-38ec4f0b665a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
                  ),
                ),
              ],
            ),
          ),
          footer(),
        ],
      ),
    ),
  );
}

Widget footer() {
  return Padding(
    padding: const EdgeInsets.only(top: 55.0),
    child: Container(
      color: Colors.grey.shade100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            color: Colors.grey.shade100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Price",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Text(
                  "\$750",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffF8A537),
              border: Border.all(
                color: Colors.black12,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text('Book Now'),
            ),
          ),
        ],
      ),
    ),
  );
}
