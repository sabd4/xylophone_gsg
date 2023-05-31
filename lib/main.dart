import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded _buildkey({required Color color, required int num}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
        onPressed: () {
          play(num);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  void play(int num) {
    final player = AudioPlayer();
    player.play(AssetSource('note$num.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildkey(color: Colors.red, num: 1),
              _buildkey(color: Colors.orange, num: 2),
              _buildkey(color: Colors.yellow, num: 3),
              _buildkey(color: Colors.green, num: 4),
              _buildkey(color: Colors.blue, num: 5),
              _buildkey(color: Colors.pink, num: 6),
              _buildkey(color: Colors.purple, num: 7),
            ],
          ),
        ),
      ),
    );
  }
}
