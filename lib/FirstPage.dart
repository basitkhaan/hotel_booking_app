import 'package:flutter/material.dart';
import './FirstPage_Files/header.dart';
import './FirstPage_Files/hotelCard.dart';
import './FirstPage_Files/lowerCard.dart';
import './FirstPage_Files/TextField.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 12,),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              header(),
              searchTextField(),
              Container(
                height: 350,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    hotelCard(),
                    hotelCard(),
                  ],
                ),
              ),
              Text(
                'Popular House',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    lowerCard(),
                    lowerCard(),
                    lowerCard(),
                    lowerCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
