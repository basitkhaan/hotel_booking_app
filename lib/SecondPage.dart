import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Image(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1496417263034-38ec4f0b665a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,),
              child: lowerPartOfSecondPage(),
            ),
          ],
        ),
      ),
    );
  }
}



Widget lowerPartOfSecondPage() {
  return Container(
    child: Padding(
      padding: const EdgeInsets.only(top:20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text('Monal Hotel',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right:8.0),
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
                  child: Row(
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
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 17),
            child: Text('This house is very Modern, which is close to the station and is in the center of business.',
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey,
                letterSpacing: 1.1
              ),),
          ),
          Text('Facilites',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                smallSizeImage(),
                smallSizeImage(),
                smallSizeImage(),
              ],
            ),
          ),
          footer(),
        ],
      ),
    ),
  );
}

Widget footer(){
  return Padding(
    padding: const EdgeInsets.only(top:25.0),
    child: Container(
      color: Colors.grey,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              children: [
                Text("Price\n",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),),
                Text("\$750"),
              ],
            ),
          ),
          Container(
            color:Color(0xffF8A537),
            child:Padding(
              padding: const EdgeInsets.all(15),
              child: Text('Book Now'),
            ),
          ),
        ],
      ),
    ),
  );
}


Widget smallSizeImage() {
  return Container(
    child: Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image(
          height: 73,
          image: NetworkImage(
            'https://images.unsplash.com/photo-1496417263034-38ec4f0b665a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
          ),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
