import 'package:flutter/material.dart';

Widget searchTextField() {
  return Padding(
    padding: const EdgeInsets.only(top: 2, right: 15,),
    child: Container(
      child: Row(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              height: 60,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Search Favorite Hotel",
                  contentPadding:
                  const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                  border: OutlineInputBorder(
                    borderSide: new BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 12 ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: Color(0xffFC6D7B),
                ),
                height: 48,
                child: Icon(
                  Icons.search_rounded,
                  size: 32,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
