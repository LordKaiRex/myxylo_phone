import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {

  void soundPlayer(int noteNum){
    final player = AudioPlayer();
    player.play(
      AssetSource('note$noteNum.wav'),
    );
  }
Expanded keyBuild({Color? color, int? noteNum}) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: color,
      ),
      onPressed: () {
        soundPlayer(noteNum!);
      },
      child: const Text(''),
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                keyBuild(color: Colors.red, noteNum: 1),
                keyBuild(color: Colors.orange, noteNum: 2),
                keyBuild(color: Colors.yellow, noteNum: 3),
                keyBuild(color: Colors.green, noteNum: 4),
                keyBuild(color: Colors.teal, noteNum: 5),
                keyBuild(color: Colors.blue, noteNum: 6),
                keyBuild(color: Colors.purple, noteNum: 7),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
