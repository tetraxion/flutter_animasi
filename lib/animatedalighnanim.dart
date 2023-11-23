import 'dart:math';
import 'package:flutter/material.dart';

class MyAnimatedAlign extends StatefulWidget {
  const MyAnimatedAlign({Key? key}) : super(key: key);

  @override
  State<MyAnimatedAlign> createState() => _MyAnimatedAlignState();
}

class _MyAnimatedAlignState extends State<MyAnimatedAlign> {
  late Alignment _randomAlignment;
  late Random _random;

  @override
  void initState() {
    super.initState();
    _random = Random();
    _randomAlignment = _getRandomAlignment();
  }

  Alignment _getRandomAlignment() {
    double x = _random.nextDouble() * 2 -
        1; // Generate random value between -1 and 1 for x
    double y = _random.nextDouble() * 2 -
        1; // Generate random value between -1 and 1 for y
    return Alignment(x, y);
  }

  void _changeAlignment() {
    setState(() {
      _randomAlignment = _getRandomAlignment();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Animated Align")),
        actions: const [],
      ),
      body: Center(
        child: Container(
          height: 500,
          width: 500,
          decoration: const BoxDecoration(
            gradient: RadialGradient(colors: <Color>[
              Colors.yellow,
              Colors.green,
            ]),
          ),
          child: AnimatedAlign(
            alignment: _randomAlignment,
            duration: const Duration(seconds: 1),
            child: GestureDetector(
              onTap: () {
                _changeAlignment();
              },
              child: FlutterLogo(
                size: 100,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
