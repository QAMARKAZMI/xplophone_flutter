import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({super.key});

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                playSound(1); // Ensure you have the audio file in assets
              },
              child: Text("Click Me"),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: () {
                playSound(2);
              },
              child: Text("Click Me"),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.yellow),
              onPressed: () {
                playSound(3);
              },
              child: Text("Click Me"),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {
                playSound(4);
              },
              child: Text("Click Me"),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.teal),
              onPressed: () {
                playSound(5);
              },
              child: Text("Click Me"),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {
                playSound(6);
              },
              child: Text("Click Me"),
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.purple),
              onPressed: () {
                playSound(7);
              },
              child: Text("Click Me"),
            ),
          ],
        ),
      ),
    );
  }
}
