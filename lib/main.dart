import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade900,
        title: const Center(
          child: Text('Ask Me Anything'),
        ),
      ),
      backgroundColor: Colors.teal.shade700,
      body: const SafeArea(
        child: AskMeAnyThing(),
      ),
    ),
  ));
}

class AskMeAnyThing extends StatefulWidget {
  const AskMeAnyThing({Key? key}) : super(key: key);

  @override
  _AskMeAnyThingState createState() => _AskMeAnyThingState();
}

class _AskMeAnyThingState extends State<AskMeAnyThing> {
  int answer = 1;
  Random rand = Random();

  void answerRandomly() {
    setState(() {
      answer = rand.nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  answerRandomly();
                },
                child: Image.asset('images/ball$answer.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
