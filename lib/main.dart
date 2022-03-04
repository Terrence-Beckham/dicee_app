import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

// ignore: use_key_in_widget_constructors
class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Image.asset('images/dice1.png'),
          ),
          Expanded(
            child: Image.asset('images/dice1.png'),
          ),
        ],
      ),
    );
  }
}
