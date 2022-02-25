import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play("note${soundNumber}.wav");
  }

  Expanded buildKey(
      {Color color = Colors.red,
      Color colorAccent = Colors.redAccent,
      int soundNumber = 1}) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) return color;
              return colorAccent;
            },
          ),
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(
                  color: Colors.red,
                  colorAccent: Colors.redAccent,
                  soundNumber: 1),
              buildKey(
                  color: Colors.orange,
                  colorAccent: Colors.orangeAccent,
                  soundNumber: 2),
              buildKey(
                  color: Colors.yellow,
                  colorAccent: Colors.yellowAccent,
                  soundNumber: 3),
              buildKey(
                  color: Colors.green,
                  colorAccent: Colors.greenAccent,
                  soundNumber: 4),
              buildKey(
                  color: Colors.teal,
                  colorAccent: Colors.tealAccent,
                  soundNumber: 5),
              buildKey(
                  color: Colors.blue,
                  colorAccent: Colors.blueAccent,
                  soundNumber: 6),
              buildKey(
                  color: Colors.purple,
                  colorAccent: Colors.purpleAccent,
                  soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
