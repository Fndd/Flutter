import 'dart:convert';

import 'package:flutter/material.dart';

void main() {
  runApp(
    BenimUygulamam(),
  );
}

class BenimUygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.brown[400],
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircleAvatar(
            radius: 80,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('assets/images/coffee.jpg'),
          ),
          Center(
            child: Text(
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontFamily: 'Satisfy',
                ),
                'Flutter Kahvecisi'),
          ),
          Center(
            child: Text(
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: 'Lato',
              ),
              'Bir fincan uzagınızda',
            ),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 30,
              color: Colors.brown[900],
            ),
          ),
          Card(
            // transform: Matrix4.rotationZ(-0.2),
            // width: 150,
            color: Colors.brown[600],
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(
                'info@fluttercoffe.com',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              leading: Icon(
                Icons.email,
                size: 32,
                color: Colors.white,
              ),
            ),
          ),
          Card(
            // transform: Matrix4.rotationZ(-0.2),
            //width: 150,
            color: Colors.brown[600],
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                size: 32,
                color: Colors.white,
              ),
              title: Text(
                '0 555 555 55 55',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      )),
    ));
  }
}
