import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Bugün ne yesem ?',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int yemek1 =0;
  int yemek2 =0;
  int yemek3 =0;
  List<String> yemekler = [
    'kumpir.jpg',
    'et.jpg',
    'tavuk.jpg',
    'kahvalti.jpg',
    'salata.jpg'
  ];
  void fotiDegis() {
    setState(() {
    var random = new Random();
    yemek1 = random.nextInt(5);
    yemek2 = random.nextInt(5);
    yemek3 = random.nextInt(5);
  }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                  color: Colors.transparent,
                  highlightColor: Colors.blue,
                  splashColor: Colors.transparent,
                  onPressed: fotiDegis,
                  child: Image.asset('assets/images/${yemekler[yemek1]}')),
            ),
          ),
          Text(yemekler[yemek1]),
          Container(
            width: 250,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                  color: Colors.transparent,
                  highlightColor: Colors.blue,
                  splashColor: Colors.transparent,
                  onPressed: fotiDegis,
                  child: Image.asset('assets/images/${yemekler[yemek2]}' )),
            ),
          ),
          Text(yemekler[yemek2]),
          Container(
            width: 250,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                  color: Colors.transparent,
                  highlightColor: Colors.blue,
                  splashColor: Colors.transparent,
                  onPressed: fotiDegis,
                  child: Image.asset('assets/images/${yemekler[yemek3]}' )),
            ),
          ),
          Text(yemekler[yemek3]),
          Container(
            width: 250,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
