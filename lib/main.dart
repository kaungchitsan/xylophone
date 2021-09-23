import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Xylophone());

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: XylophoneApp(),
        ),
      ),
    );
  }
}

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  void _playSong(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color = Colors.red, int soundNumber = 1}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          _playSong(soundNumber);
        },
        child: const Text(''),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        buildKey(color: Colors.red.shade400, soundNumber: 1),
        buildKey(color: Colors.orange.shade400, soundNumber: 2),
        buildKey(color: Colors.blue.shade400, soundNumber: 3),
        buildKey(color: Colors.teal.shade400, soundNumber: 4),
        buildKey(color: Colors.green.shade400, soundNumber: 5),
        buildKey(color: Colors.lightBlue.shade400, soundNumber: 6),
        buildKey(color: Colors.purple.shade400, soundNumber: 7),
      ],
    );
  }
}
