import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({super.key});

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: TextButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(
                AssetSource('note1.wav'),
              ); // Ensure you have the audio file in assets
            },
            child: Text("Click Me"),
          ),
        ),
      ),
    );
  }
}
