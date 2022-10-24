import 'package:audio_book/audio_book15.dart';
import 'package:audio_book/audio_book16.dart';
import 'package:audio_book/audio_book18.dart';
import 'package:audio_book/audio_book19.dart';
import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class MyAudioBook17 extends StatefulWidget {
  const MyAudioBook17({super.key});

  @override
  State<MyAudioBook17> createState() => _MyAudioBook17State();
}

class _MyAudioBook17State extends State<MyAudioBook17>
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
        ),
        body: ListView(
          children: [
            Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(right: 24, left: 24, top: 30),
                    child: Text(
                      "Explore",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.only(right: 24, left: 24),
                  child: Form(
                    autovalidateMode: AutovalidateMode.always,
                    child: TextFormField(
                      validator: (value) {
                        if (value != "Harry Potter") {
                          
                        return "There is only Harry Potter";
                        }
                      },
                      onChanged: (value) {
                        _animationController.forward();
                        setState(() {
                          if (value == "Harry Potter") {
                            _set0 = false;
                          } else if (value == "") {
                            _set0 = true;
                            _set1 = true;
                          } else {
                            _set0 = true;
                            _set1 = false;
                          }
                        });
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Search Books Author....",
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        hintStyle: const TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                _set0
                    ? Column(
                        children: [
                          _set1
                              ? Column(
                                  children: [
                                    _textRow(
                                      "Recommended Categories",
                                    ),
                                    SizedBox(
                                      height: 150,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 0, vertical: 6),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                _textBottom(
                                                    "Business", Icons.business),
                                                const SizedBox(width: 14),
                                                _textBottom("Personal...",
                                                    Icons.person_outline_sharp),
                                              ],
                                            ),
                                            const SizedBox(height: 16),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                _textBottom("Music",
                                                    Icons.play_circle_outline),
                                                const SizedBox(width: 14),
                                                _textBottom(
                                                    "Photogram...",
                                                    Icons
                                                        .photo_camera_outlined),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    _textRow("Latest Search"),
                                    const SizedBox(height: 10),
                                    SizedBox(
                                      height: 220,
                                      child: ListView(
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          const SizedBox(width: 12),
                                          _imagRow(
                                              "assets/images/audioimag5.png",
                                              "The Prisoner's Key"),
                                          _imagRow(
                                              "assets/images/audioimag7.png",
                                              "The Fire Queen"),
                                          _imagRow(
                                              "assets/images/audioimag4.4.png",
                                              "Witch's Ladder"),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              : AnimatedBuilder(
                                  animation: _animation,
                                  builder: (context, child) => SizedBox(
                                    width: _animation.value.width,
                                    height: _animation.value.height,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.search_off,
                                          color:
                                              Color.fromARGB(255, 72, 56, 208),
                                          size: 60,
                                        ),
                                        Text(
                                          "Search......",
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 247, 122, 85),
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                        ],
                      )
                    : Column(
                        children: [
                          _textRow(
                            "Search Results",
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _imagGradian("assets/images/HarryPotter.jpg",
                                  "Sorcerer's Stone", "J.K Rowling"),
                              _imagGradian("assets/images/HarryPotter1.jpg",
                                  "Prisoner of Azkaban", "J.K Rowling"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(width: 12),
                              _imagGradian("assets/images/HarryPotter2.jpg",
                                  "Chamber of Secrets", "J.K Rowling"),
                            ],
                          ),
                        ],
                      ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: FancyBottomNavigation(
          barBackgroundColor: Colors.black,
          circleColor: const Color.fromARGB(255, 72, 56, 208),
          inactiveIconColor: const Color.fromARGB(255, 247, 122, 85),
          textColor: Colors.white,
          initialSelection: 1,
          tabs: [
            TabData(iconData: Icons.home, title: "Home"),
            TabData(iconData: Icons.search, title: "Search"),
            TabData(iconData: Icons.library_books_rounded, title: "Librory"),
          ],
          onTabChangedListener: (position) {
            setState(() {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => position == 0
                      ? const MyAudioBook15()
                      : const MyAudioBook19(),
                ),
              );
            });
          },
        ),
      ),
    );
  }

  _textBottom(String s, IconData isicon) {
    return TextButton.icon(
      icon: Icon(
        isicon,
        color: Colors.grey.shade600,
      ),
      onPressed: () {},
      style: TextButton.styleFrom(
        fixedSize: const Size(170, 50),
        foregroundColor: Colors.grey,
        padding: EdgeInsets.zero,
        backgroundColor: Colors.grey.shade200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      label: Text(
        s,
        style: const TextStyle(
          color: Color.fromARGB(255, 54, 48, 109),
          fontSize: 20,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  _textRow(String s) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            s,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  _imagRow(String s3, String t1) {
    return Container(
      width: 170,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 170,
              width: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                  image: AssetImage(s3),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              t1,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _imagGradian(String s2, String t, String t2) {
    return SizedBox(
      height: 270,
      width: 180,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const MyAudioBook18(),
                  ),
                );
              },
              child: Container(
                height: 190,
                width: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: DecorationImage(
                    image: AssetImage(s2),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              t,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              t2,
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
