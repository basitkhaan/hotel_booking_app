import 'package:flutter/material.dart';

Widget header(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 20, right: 15,
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            child: Column(
              children: [
                Container(
                  // color: Colors.black,
                  //    width: ,
                  child: Row(
                    children: [
                      Text(
                        "Location",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 20.0,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_rounded,
                        color: Color(0xffF76E78),
                        size: 28.0,
                      ),
                      Text(
                        'Islamabad, Pakistan',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 80.0),
          child: Container(
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Icon(
                Icons.login_rounded,
                color: Colors.black,
                size: 35.0,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
