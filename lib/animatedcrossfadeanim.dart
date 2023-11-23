import 'package:flutter/material.dart';

class MyAnimatedCrossFade extends StatefulWidget {
  const MyAnimatedCrossFade({super.key});

  @override
  State<MyAnimatedCrossFade> createState() => _MyAnimatedCrossFadeState();
}

class _MyAnimatedCrossFadeState extends State<MyAnimatedCrossFade> {
  bool tekan = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedFade"),
        actions: const [],
      ),
      body: Center(
        child: Center(
          child: GestureDetector(
              onTap: () {
                setState(() {
                  tekan = !tekan;
                });
              },
              child: AnimatedCrossFade(
                firstCurve: Curves.bounceIn,
                secondCurve: Curves.linear,
                firstChild: Container(
                  height: 500,
                  width: 500,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
                secondChild: FlutterLogo(
                  size: 500.0,
                ),
                crossFadeState: tekan
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: Duration(seconds: 5),
              )),
        ),
      ),
    );
  }
}
