import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:hotel_booking/FirstPage.dart';
import 'SecondPage.dart';
void main() {
  runApp(firstPage());
}

class firstPage extends StatefulWidget {
  @override
  _firstPageState createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade100,
        // resizeToAvoidBottomInset: false,
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero, //remove any padding from ListView
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                arrowColor: Colors.white,
                accountName: Text("Ali"),
                accountEmail: Text("abc123@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://www.pinterest.com/pin/315814992625911839/"),
                ),
              ),
              ListTile(
                title: Text("Profile"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("About"),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
        body: SecondPage(),
      ),
    );
  }
}
