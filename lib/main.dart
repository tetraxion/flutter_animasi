
// import 'package:animasi/animatedcontaineranim.dart';
// import 'package:animasi/animatedcrossfadeanim.dart';
import 'package:animasi/animatedalighnanim.dart';
import 'package:animasi/animatedcontaineranim.dart';
import 'package:animasi/animatedcrossfadeanim.dart';
import 'package:animasi/animatedpositionanim.dart';
import 'package:animasi/animedbuildieranim.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyGestureAnimationApp());
}

class MyGestureAnimationApp extends StatelessWidget {
  const MyGestureAnimationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAnimatedAlign());
  }
}
