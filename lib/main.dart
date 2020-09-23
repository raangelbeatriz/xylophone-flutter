import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int num){
      final player = AudioCache();
      player.play('note$num.wav');
  }

  Expanded createButton(Color color, int numSong){
    return Expanded(
    child: FlatButton(
    color: color,
    onPressed: (){
    playSound(numSong);
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
              createButton(Colors.red, 1),
              createButton(Colors.orange, 2),
              createButton(Colors.yellow, 3),
              createButton(Colors.green, 4),
              createButton(Colors.teal, 5),
              createButton(Colors.lightBlue, 6),
              createButton(Colors.purple, 7),
          ],
          ),
        ),
      ),
    );
  }
}
