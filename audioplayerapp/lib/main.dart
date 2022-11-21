import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: DrumPage(),
      ),
    );
  }
}

class DrumPage extends StatelessWidget {
  final players = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: buildFlatButton(),
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(3),
                    onPressed: () {
                      players.play(AssetSource('sounds/bongo2.wav'));
                    },
                    child: Container(
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(3),
                    onPressed: () {
                      players.play(AssetSource('sounds/bongo2.wav'));
                    },
                    child: Container(
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
                Expanded(
                  child: buildFlatButton(),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: buildFlatButton(),
                ),
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(3),
                    onPressed: () {
                      players.play(AssetSource('sounds/bongo2.wav'));
                    },
                    child: Container(
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                    padding: EdgeInsets.all(3),
                    onPressed: () {
                      players.play(AssetSource('sounds/bongo2.wav'));
                    },
                    child: Container(
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
                Expanded(
                  child: buildFlatButton(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  FlatButton buildFlatButton() {
    return FlatButton(
                  padding: EdgeInsets.all(3),
                  onPressed: () {
                    players.play(AssetSource('sounds/bongo.wav'));
                  },
                  child: Container(
                  color: Colors.blueAccent,
                  ),
                );
  }
}
