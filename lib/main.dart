import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int n) {
    final player = AudioCache();
    player.play('note$n.wav');
  }

  Expanded buildKey(int num, Color col) {
    return Expanded(
      child: FlatButton(
        color: col,
        onPressed: () {
          playSound(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, Colors.orangeAccent),
              buildKey(2, Colors.tealAccent),
              buildKey(3, Colors.blueAccent),
              buildKey(4, Colors.redAccent),
              buildKey(5, Colors.yellowAccent),
              buildKey(6, Colors.purpleAccent),
              buildKey(7, Colors.greenAccent)
            ],
          ),
        ),
      ),
    );
  }
}
