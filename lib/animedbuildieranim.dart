import 'package:flutter/material.dart';

class MyRotatingAnimatedBuilderExample extends StatefulWidget {
  const MyRotatingAnimatedBuilderExample({Key? key}) : super(key: key);

  @override
  State<MyRotatingAnimatedBuilderExample> createState() =>
      _MyRotatingAnimatedBuilderExampleState();
}

class _MyRotatingAnimatedBuilderExampleState
    extends State<MyRotatingAnimatedBuilderExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();

    // Inisialisasi AnimationController
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    // Inisialisasi Tween untuk animasi rotasi
    _rotationAnimation =
        Tween<double>(begin: 0.0, end: 2 * 3.14).animate(_controller);

    // Memulai animasi
    _controller.repeat(); // agar animasi terus berputar

    // Alternatif: _controller.forward(); untuk satu putaran saja
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Center(child: Text("Contoh AnimatedBuilder dengan Rotasi")),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              angle: _rotationAnimation.value,
              child: FlutterLogo(
                size: 100,
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
