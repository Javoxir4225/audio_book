import 'dart:async';

import 'package:audio_book/audio_book1.dart';
import 'package:flutter/material.dart';

class MyAudioBook0 extends StatefulWidget {
  const MyAudioBook0({super.key});

  @override
  State<MyAudioBook0> createState() => _MyAudioBook0State();
}

class _MyAudioBook0State extends State<MyAudioBook0>
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
      curve: Curves.easeIn,
    );
    _animationController.repeat(reverse: true);
    super.initState();

    Timer(const Duration(milliseconds: 6000), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const MyAudioBook1(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const Expanded(child: SizedBox()),
              Expanded(
                child: FadeTransition(
                  opacity: _animation,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/Circle.png",
                        fit: BoxFit.cover,
                        height: 100,
                        width: 100,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100, right: 0),
                        child: Image.asset(
                          "assets/images/Dot.png",
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Expanded(child: SizedBox()),
              const Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Version 1.0",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
