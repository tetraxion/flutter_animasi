import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({super.key});

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  double lebar = 200;
  double tinggi = 200;
  Color warna = Colors.red;
  Text teks = Text("");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text("Animasi")),
        actions: const [],
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              lebar = 500;
              tinggi = 500;
              warna = Colors.green;
              teks = Text('Good');
            });
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 5000),
            curve: Curves.bounceIn,
            height: lebar,
            width: tinggi,
            color: warna,
            
          ),
        ),
      ),
    );
  }
}
