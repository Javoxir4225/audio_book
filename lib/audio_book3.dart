import 'package:audio_book/audio_book4.dart';
import 'package:flutter/material.dart';

class MyAudioBook3 extends StatefulWidget {
  final bool set;
   MyAudioBook3( {super.key,required this.set});
   
  @override
  State<MyAudioBook3> createState() => _MyAudioBook3State();
}

class _MyAudioBook3State extends State<MyAudioBook3>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation3;

  
  @override
  void initState() {
    
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation3 = Tween(
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
      position: _animation3,
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
                    height: 240,
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
                    height: 150,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 280, top: 260, right: 58, left: 56),
                child: Image.asset(
                  "assets/images/ll2.png",
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 530, bottom: 200, left: 40, right: 48),
                child: Column(
                  children: [
                    const Text(
                      "Tittle Three",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 0, left: 0, top: 10),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: const [
                            Text(
                              "Lorem ipsum dolor sit amet la maryame",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                            Text(
                              "dor sut colondeum",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    right: 130, left: 144, bottom: 176, top: 610),
                child: Row(
                  children: const [
                    Icon(
                      Icons.circle,
                      color: Color.fromARGB(255, 72, 56, 208),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.circle,
                      color: Color.fromARGB(255, 72, 56, 208),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.circle,
                      color: Color.fromARGB(255, 247, 122, 85),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 40, right: 40, bottom: 80, top: 676),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const MyAudioBook4(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fixedSize: const Size(320, 50),
                    backgroundColor: const Color.fromARGB(255, 72, 56, 208),
                  ),
                  child: const Text(
                    "Lets Get Started",
                    style: TextStyle(color: Colors.white),
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
