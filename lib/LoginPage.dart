import 'package:flutter/material.dart';
import 'package:hotel_booking/FirstPage_Files/TextField.dart';
import 'SignupPage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.grey.shade100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 90.0, 0.0, 0.0),
                    child: Text('Hello',
                        style: TextStyle(
                            fontSize: 55.0, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(16.0, 135.0, 0.0, 0.0),
                    child: Text('There',
                        style: TextStyle(
                            fontSize: 55.0, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(160.0, 113.0, 0.0, 0.0),
                    child: Text('.',
                        style: TextStyle(
                            fontSize: 80.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffFC6D7B))),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 65.0, left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Email',
                      contentPadding:
                          const EdgeInsets.only(left: 10, top: 30, bottom: 5),
                      border: OutlineInputBorder(
                        borderSide: new BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(9),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Password',
                      contentPadding:
                          const EdgeInsets.only(left: 10, top: 30, bottom: 5),
                      border: OutlineInputBorder(
                        borderSide: new BorderSide(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(9),
                      ),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 2.0),
                  Container(
                    alignment: Alignment(1.0, 0.0),
                    padding: EdgeInsets.only(top: 15.0, left: 20.0),
                    child: InkWell(
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                            color: Color(0xffFC6D7B),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                  SizedBox(height: 60.0),
                  Container(
                    height: 55.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(9.0),
                      shadowColor: Colors.white,
                      color: Color(0xffFC6D7B),
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'New here?',
                        style: TextStyle(fontFamily: 'Montserrat'),
                      ),
                      SizedBox(width: 5.0),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                            color: Color(0xffFC6D7B),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
