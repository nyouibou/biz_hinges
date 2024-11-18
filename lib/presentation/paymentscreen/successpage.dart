import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'pagesuccess.dart';

class FadeInAndSlide extends StatefulWidget {
  const FadeInAndSlide({super.key});

  @override
  State<FadeInAndSlide> createState() => _FadeInAndSlideState();
}

class _FadeInAndSlideState extends State<FadeInAndSlide> {
  String logo = "assets/img_11.png";
  bool isDone = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Center(
                  child: Image.asset(
            logo,
            width: 280,
          ))
              .animate()
              .fadeIn(duration: 80.ms)
              .then(delay: 100.ms)
              .then(delay: 100.ms)
              .then(delay: 500.ms)
              .scaleXY(end: 10, duration: 400.ms)
              .then(delay: 60.ms)
              .callback(callback: (_) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => OrderConfirmationScreen()));
          }),
        ],
      ),
    );
  }
}
