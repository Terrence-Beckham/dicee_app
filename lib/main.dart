import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.blueGrey[500],
        ),
        body: DicePage(),
      ),
    ),
  );
}

// ignore: use_key_in_widget_constructors
class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceButton = 1;
  var rightDiceButton = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  if (leftDiceButton != 6) {
                    leftDiceButton++;
                  } else {
                    leftDiceButton = 1;
                  }
                });
              },
              child: Image.asset('images/dice$leftDiceButton.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  if (rightDiceButton != 6) {
                    rightDiceButton++;
                  } else {
                    rightDiceButton = 1;
                  }
                });
              },
              child: Image.asset('images/dice$rightDiceButton.png'),
            ),
          ),
        ],
      ),
    );
  }
}
