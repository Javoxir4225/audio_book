import 'package:audio_book/audio_book2.dart';
import 'package:flutter/material.dart';

class MyAudioBook1 extends StatefulWidget {
  const MyAudioBook1({super.key});

  @override
  State<MyAudioBook1> createState() => _MyAudioBook1State();
}

class _MyAudioBook1State extends State<MyAudioBook1>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation1;
  AnimationStatus _animationStatus = AnimationStatus.dismissed;
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _animation1 = Tween(
      begin: (2.0),
      end: (0.0),
    ).animate(
      _animationController,
    )
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        _animationStatus = status;
      });

    _animationController.forward();
    super.initState();
  }

  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _list1(
          "assets/images/ll.png",
        ),
      ),
    );
  }

  _list1(String images) {
    return Transform(
      alignment: FractionalOffset.center,
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.02)
        ..rotateY(
          3.14 * (_animation1.value),
        ),
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
                  images,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 520, bottom: 200, left: 40, right: 48),
                child: Column(
                  children: [
                    const Text(
                      "Tittle One",
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
                    right: 140, left: 144, bottom: 176, top: 630),
                child: Row(
                  children: const [
                    Icon(
                      Icons.circle,
                      color: Color.fromARGB(255, 247, 122, 85),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.circle,
                      color: Color.fromARGB(255, 72, 56, 208),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.circle,
                      color: Color.fromARGB(255, 72, 56, 208),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 60, right: 40, bottom: 80, top: 676),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        fixedSize: const Size(100, 50),
                      ),
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                          color: Color.fromARGB(255, 72, 56, 208),
                        ),
                      ),
                    ),
                    const SizedBox(width: 48),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const MyAudioBook2(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fixedSize: const Size(100, 50),
                        backgroundColor: const Color.fromARGB(255, 72, 56, 208),
                      ),
                      child: const Text(
                        "Next",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
