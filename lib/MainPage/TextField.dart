import 'package:flutter/material.dart';

Widget searchTextField() {
  return Padding(
    padding: const EdgeInsets.only(top: 20, right: 15),
    child: Container(
      child: Row(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Search Cities, Hotels...",
                  contentPadding:
                  const EdgeInsets.only(left: 10, top: 5, bottom: 5),
                  border: OutlineInputBorder(
                    borderSide: new BorderSide(
                      color: Color(0xffFC6D7B),
                    ),
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: Color(0xffFC6D7B),

                  // color: Color(0xffFC6D7B),
                ),
                height: 50,
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
