import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  static AudioCache audioPlayer = AudioCache();

  void play(int num) {
    audioPlayer.play('note$num.wav');
  }

  Expanded buildKey({int num, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          play(num);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              buildKey(num: 1, color: Colors.red),
              buildKey(num: 2, color: Colors.orange),
              buildKey(num: 3, color: Colors.yellow),
              buildKey(num: 4, color: Colors.green),
              buildKey(num: 5, color: Colors.teal),
              buildKey(num: 6, color: Colors.blue),
              buildKey(num: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
