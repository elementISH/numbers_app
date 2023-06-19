import 'package:flutter/material.dart';
import 'dart:math';

class RandomPage extends StatefulWidget {
  const RandomPage({super.key});
  @override
  State<RandomPage> createState() => _RandomPageState();
}

class _RandomPageState extends State<RandomPage> {
  int _randomNumber = 0;
  final _random = Random();

  void _generateRandomNumber() {
    setState(() {
      _randomNumber = _random.nextInt(100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Random'), actions: [
        TextButton(
          onPressed: () => {Navigator.pop(context)},
          child: const Text("Increment Number"),
        ),
      ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Random Number: $_randomNumber',
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _generateRandomNumber,
        tooltip: 'Generate Random',
        child: const Icon(Icons.casino_outlined),
      ),
    );
  }
}
