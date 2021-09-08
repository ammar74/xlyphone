import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildScreen({required Color color, required int number}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(number);
        },
        child: Text('Note $number'),
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
            children: [
              buildScreen(color: Colors.red, number: 1),
              buildScreen(color: Colors.yellow, number: 2),
              buildScreen(color: Colors.green, number: 3),
              buildScreen(color: Colors.blue, number: 4),
              buildScreen(color: Colors.orange, number: 5),
              buildScreen(color: Colors.brown, number: 6),
              buildScreen(color: Colors.teal, number: 7),
            ],
          ),
        ),
      ),
    );
  }
}
