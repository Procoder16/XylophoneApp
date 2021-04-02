import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SafeArea(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: FlatButton(
                    color: Colors.red,
                    onPressed: () {
                      playSound(1);
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.orange,
                    onPressed: () {
                      playSound(2);
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.yellow,
                    onPressed: () {
                      playSound(3);
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                      color: Colors.green[700],
                      onPressed: () {
                        playSound(4);
                      }),
                ),
                Expanded(
                  child: FlatButton(
                      color: Colors.green[900],
                      onPressed: () {
                        playSound(5);
                      }),
                ),
                Expanded(
                  child: FlatButton(
                      color: Colors.blue[800],
                      onPressed: () {
                        playSound(6);
                      }),
                ),
                Expanded(
                  child: FlatButton(
                      color: Colors.purple,
                      onPressed: () {
                        playSound(7);
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
