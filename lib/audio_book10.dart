import 'package:audio_book/audio_book11.dart';
import 'package:audio_book/audio_book3.dart';
import 'package:audio_book/main.dart';
import 'package:flutter/material.dart';

class MyAudioBook10 extends StatefulWidget {
  const MyAudioBook10({super.key});

  @override
  State<MyAudioBook10> createState() => _MyAudioBook10State();
}

class _MyAudioBook10State extends State<MyAudioBook10>
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
          body: Stack(
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
                padding: const EdgeInsets.only(left: 60, top: 260, right: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Welcome !",
                      style: TextStyle(
                        color: Color.fromARGB(255, 247, 122, 85),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Find what you are looking for",
                      style: TextStyle(
                        color: Color.fromARGB(255, 72, 56, 208),
                        fontWeight: FontWeight.w100,
                        fontSize: 48,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "By personalize your account, we can help you to find what you like",
                      style: TextStyle(
                        color: Color.fromARGB(255, 72, 56, 208),
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 24),
                    _elevetBottom("Personalize Your Account", true),
                    const SizedBox(height: 16),
                    _elevetBottom("Skip", false),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _elevetBottom(String text, bool isColor) {
    return ElevatedButton(
      onPressed: () {
        isColor
            ? null
            : Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const MyAudioBook11(),
                ),
              );
      },
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
              color: Color.fromARGB(255, 72, 56, 208),
            ),
          ),
          fixedSize: const Size(300, 60),
          backgroundColor:
              isColor ? const Color.fromARGB(255, 72, 56, 208) : Colors.white,
          foregroundColor: const Color.fromARGB(255, 72, 56, 208)),
      child: Text(
        text,
        style: TextStyle(
          color:
              isColor ? Colors.white : const Color.fromARGB(255, 72, 56, 208),
        ),
      ),
    );
  }
}
