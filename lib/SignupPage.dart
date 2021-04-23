import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 95.0, 0.0, 0.0),
                  child: Text(
                    'SignUp',
                    style:
                        TextStyle(fontSize: 55.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(190.0, 85.0, 0.0, 0.0),
                  child: Text(
                    '.',
                    style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffFC6D7B)),
                  ),
                )
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 55.0, left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10.0),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Name',
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
                  SizedBox(height: 10.0),
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
                    obscureText: true,
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
                  SizedBox(height: 40.0),
                  Container(
                      height: 45.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(9),
                        shadowColor: Colors.white,
                        color: Color(0xffFC6D7B),
                        elevation: 9.0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              'SIGNUP',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                        ),
                      )),
                  SizedBox(height: 8.0),
                  Container(
                    height: 45.0,
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Center(
                        child: Text(
                          'Skip',
                          style: TextStyle(
                            color: Color(0xffFC6D7B),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
