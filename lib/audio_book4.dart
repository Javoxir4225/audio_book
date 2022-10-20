import 'package:audio_book/audio_book3.dart';
import 'package:audio_book/audio_book5.dart';
import 'package:flutter/material.dart';

class MyAudioBook4 extends StatefulWidget {
  const MyAudioBook4({super.key});

  @override
  State<MyAudioBook4> createState() => _MyAudioBook4State();
}

class _MyAudioBook4State extends State<MyAudioBook4>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation4;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation4 = Tween(
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
      position: _animation4,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                height: 90,
                color: Colors.white,
                child: Center(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => MyAudioBook3(set: false),
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.black,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 120),
                        child: Text(
                          "Error",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                thickness: 0.5,
                color: Colors.grey,
                height: 0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40, left: 40, top: 40),
                child: Image.asset(
                  "assets/images/ll3.png",
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: const [
                  Text(
                    "Ops! Something Wemt Wrong",
                    style: TextStyle(
                      color: Color.fromARGB(255, 46, 46, 93),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 14),
                  Text(
                    "Please check your internet conection",
                    style: TextStyle(
                      color: Color.fromARGB(255, 38, 108, 164),
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "and try again",
                    style: TextStyle(
                      color: Color.fromARGB(255, 38, 108, 164),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const MyAudioBook5(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  fixedSize: const Size(330, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(
                      color: Color.fromARGB(255, 69, 69, 202),
                    ),
                  ),
                ),
                child: const Text(
                  "Retry",
                  style: TextStyle(
                    color: Color.fromARGB(255, 69, 69, 202),
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
