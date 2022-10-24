// ignore_for_file: sort_child_properties_last

import 'package:audio_book/audio_book14.dart';
import 'package:flutter/material.dart';

class MyAudioBook13 extends StatefulWidget {
  const MyAudioBook13({super.key});

  @override
  State<MyAudioBook13> createState() => _MyAudioBook13State();
}

class _MyAudioBook13State extends State<MyAudioBook13>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation2;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation2 = Tween(
      begin: const Offset(1.0, 0.0),
      end: const Offset(0.0, 0.0),
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );
    _animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation2,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Stack(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 600, right: 100),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Image(
                      image: AssetImage(
                        "assets/images/Circle1.png",
                      ),
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 500, left: 250, top: 120),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Image(
                      image: AssetImage(
                        "assets/images/Dot1.png",
                      ),
                      fit: BoxFit.cover,
                      height: 120,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 220, right: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/ll4.png"),
                      const SizedBox(height: 20),
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "You are ready to got!",
                          style: TextStyle(
                            color: Color.fromARGB(255, 72, 56, 208),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Congratulation, any interesting topics",
                            style: TextStyle(
                              color: Color.fromARGB(255, 72, 56, 208),
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "will be shortly your hands.",
                            style: TextStyle(
                              color: Color.fromARGB(255, 72, 56, 208),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      _elevetBottom("Finish"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _elevetBottom(String text) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 72, 56, 208),
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color.fromARGB(255, 247, 122, 85).withOpacity(1),
            const Color.fromARGB(255, 247, 122, 85).withOpacity(1),
            const Color.fromARGB(255, 72, 56, 208),
            const Color.fromARGB(255, 72, 56, 208),
            const Color.fromARGB(255, 72, 56, 208),
          ],
        ),
      ),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const MyAudioBook14(),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: const BorderSide(
                color: Color.fromARGB(255, 72, 56, 208),
              ),
            ),
            fixedSize: const Size(300, 60),
            backgroundColor: Colors.transparent,
            foregroundColor: const Color.fromARGB(255, 72, 56, 208)),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
