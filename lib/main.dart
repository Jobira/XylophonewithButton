import 'package:flutter/material.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    // Play a sound as a one-shot, releasing its resources when it finishes playing.
    Audio.load('assets/note$soundNumber.wav')
      ..play()
      ..dispose();
  }

  Expanded buildKey({var color, var soundNumber}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          child: Text(""),
          onPressed: () {
            playSound(soundNumber);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.purple, soundNumber: 1),
              buildKey(color: Colors.blue, soundNumber: 2),
              buildKey(color: Colors.blueAccent, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.yellow, soundNumber: 5),
              buildKey(color: Colors.orange, soundNumber: 6),
              buildKey(color: Colors.red, soundNumber: 7),
            ],
          )),
        ),
      ),
    );
  }
}
