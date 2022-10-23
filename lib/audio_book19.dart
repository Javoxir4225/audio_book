import 'package:audio_book/audio_book15.dart';
import 'package:audio_book/audio_book17.dart';
import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class MyAudioBook19 extends StatefulWidget {
  const MyAudioBook19({super.key});

  @override
  State<MyAudioBook19> createState() => _MyAudioBook19State();
}

class _MyAudioBook19State extends State<MyAudioBook19>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _animation = Tween(
      begin: const Size(90, 90),
      end: const Size(180, 180),
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.ease),
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _animationController.repeat(reverse: true);
        }
      });
    super.initState();
  }

  bool _set0 = true;
  bool _set1 = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: const [
            Padding(
              padding: EdgeInsets.all(16),
              child: Icon(
                Icons.settings,
                color: Color.fromARGB(255, 72, 56, 208),
              ),
            ),
          ],
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/Circle.png",
                fit: BoxFit.cover,
                height: 30,
                width: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 0),
                child: Image.asset(
                  "assets/images/Dot.png",
                  height: 10,
                  width: 10,
                ),
              ),
            ],
          ),
          title: Image.asset(
            "assets/images/audiobooks.png",
            width: 140,
            height: 140,
          ),
          bottom: PreferredSize(
            preferredSize: const Size(double.maxFinite, 150),
            child: SizedBox(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.only(left: 24,right: 24,top: 10),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Text(
                          "My Books",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Form(
                      autovalidateMode: AutovalidateMode.always,
                      child: TextFormField(
                        onChanged: (value) {
                          _animationController.forward();
                          setState(() {
                            if (value == "") {
                              _set0 = true;
                            } else {
                              _set0 = false;
                            }
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Search Books or Author....",
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintStyle: const TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  _set0
                      ? Column(
                          children: [
                            _imagRow("assets/images/audioimag4.png",
                                "The Black Witch", "Laure Forest"),
                            const SizedBox(height: 20),
                            _imagRow("assets/images/audioimag11.png",
                                "A Promised Land", "Barrack Obamo"),
                            const SizedBox(height: 20),
                            _imagRow(
                                "assets/images/HarryPotter1.jpg",
                                "Harry Potter and the\nPrisoner of Azkaban",
                                "J.K Rowling"),
                            const SizedBox(height: 20),
                            _imagRow("assets/images/audioimag10.png",
                                "The Kindnapper's\nAccomplice", "J.K Rowling"),
                            const SizedBox(height: 20),
                            _imagRow("assets/images/audioimag3.png",
                                "Light Mage", "Laure Forest"),
                            const SizedBox(height: 20),
                            _imagRow("assets/images/audioimag5.png",
                                "Prisoner's Key", "C.J Archer"),
                            const SizedBox(height: 20),
                            _imagRow("assets/images/audioimag7.png",
                                "Fire Queen", "R.King Emily"),
                            const SizedBox(height: 20),
                            _imagRow("assets/images/audioimag3.3.png",
                                "Sea To Sky", "Laure Forest"),
                            const SizedBox(height: 20),
                            _imagRow("assets/images/audioimag4.png",
                                "Black Witch", "Laure Forest"),
                            const SizedBox(height: 20),
                            _imagRow("assets/images/audioimag4.4.png",
                                "Witch's Ladder", "C.J Archer"),
                          ],
                        )
                      : AnimatedBuilder(
                          animation: _animation,
                          builder: (context, child) => SizedBox(
                            width: _animation.value.width,
                            height: _animation.value.height,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.search_off,
                                  color: Color.fromARGB(255, 72, 56, 208),
                                  size: 60,
                                ),
                                Text(
                                  "Search......",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 247, 122, 85),
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: FancyBottomNavigation(
          textColor: Colors.white,
          inactiveIconColor: const Color.fromARGB(255, 247, 122, 85),
          barBackgroundColor: Colors.black,
          circleColor: const Color.fromARGB(255, 72, 56, 208),
          tabs: [
            TabData(iconData: Icons.home, title: "Home"),
            TabData(iconData: Icons.search, title: "Search"),
            TabData(iconData: Icons.library_books, title: "Library"),
          ],
          onTabChangedListener: (position) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => position == 0
                    ? const MyAudioBook15()
                    : const MyAudioBook17(),
              ),
            );
          },
          initialSelection: 2,
        ),
      ),
    );
  }

  _imagRow(String label, String label1, String label2) {
    return Row(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
                image: AssetImage(
                  label,
                ),
                fit: BoxFit.cover),
          ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label1,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              label2,
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
