import 'dart:async';

import 'package:audio_book/audio_book1.dart';
import 'package:audio_book/audio_book15.dart';
import 'package:flutter/material.dart';

class MyAudioBook14 extends StatefulWidget {
  const MyAudioBook14({super.key});

  @override
  State<MyAudioBook14> createState() => _MyAudioBook14State();
}

class _MyAudioBook14State extends State<MyAudioBook14>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.bounceInOut,
    );
    _animationController.repeat(reverse: true);
    super.initState();

    Timer(const Duration(milliseconds: 7000), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const MyAudioBook15(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
                child: FadeTransition(
                  opacity: _animation,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/Circle.png",
                        fit: BoxFit.cover,
                        height: 80,
                        width: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100, right: 20),
                        child: Image.asset(
                          "assets/images/Dot.png",
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              
             
        
        ),
      ),
    );
  }
}
