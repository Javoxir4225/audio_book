// import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
// import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:audio_book/audio_book16.dart';
import 'package:audio_book/audio_book17.dart';
import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class MyAudioBook15 extends StatefulWidget {
  const MyAudioBook15({super.key});

  @override
  State<MyAudioBook15> createState() => _MyAudioBook15State();
}

class _MyAudioBook15State extends State<MyAudioBook15> {
  int selec = 0;
  bool set = true;
  bool set1 = true;
  bool set2 = true;
  bool set3 = true;
  bool set4 = false;
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
                _textRow("Categories", "See more"),
                const SizedBox(height: 12),
                SizedBox(
                  height: 50,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 6),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const SizedBox(width: 20),
                        _textBottom("Art"),
                        const SizedBox(width: 14),
                        _textBottom("Business"),
                        const SizedBox(width: 14),
                        _textBottom("Comedy"),
                        const SizedBox(width: 14),
                        _textBottom("Drama"),
                      ],
                    ),
                  ),
                ),
                _textRow("Recommended For you", "See more"),
                const SizedBox(height: 10),
                SizedBox(
                  height: 340,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const SizedBox(width: 12),
                      _imagContanier("assets/images/audioimag1.png"),
                      _imagContanier("assets/images/audioimag2.png"),
                    ],
                  ),
                ),
                _textRow("Best Seller", "See more"),
                const SizedBox(height: 10),
                SizedBox(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const SizedBox(width: 12),
                      _imagRowIsColor("assets/images/audioimag3.png",
                          "Light Mage", "Laurie Forest"),
                      _imagRowIsColor("assets/images/audioimag3.3.png",
                          "SEA to SKY", "Anisa Angel"),
                    ],
                  ),
                ),
                _textRow("New Releases", "See more"),
                const SizedBox(height: 10),
                SizedBox(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const SizedBox(width: 12),
                      _imagRow(
                          "assets/images/audioimag4.png", "The Black Witch"),
                      _imagRow(
                          "assets/images/audioimag5.png", "The Prisoner's Key"),
                      _imagRow(
                          "assets/images/audioimag4.4.png", "Witch's Ladder"),
                    ],
                  ),
                ),
                _textRow("Trending Now", "See more"),
                const SizedBox(height: 10),
                SizedBox(
                  height: 240,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const SizedBox(width: 12),
                      _imagRow("assets/images/audioimag6.png",
                          "The Kindnapper's Accomplise"),
                      _imagRow(
                          "assets/images/audioimag7.png", "The Fire Queen"),
                      _imagRow(
                          "assets/images/audioimag7.7.png", "Alipha Bound"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: FancyBottomNavigation(
          tabs: [
            TabData(
              iconData: Icons.home,
              title: "Home",
            ),
            TabData(
              iconData: Icons.search,
              title: "Search",
            ),
            TabData(
              iconData: Icons.library_books_rounded,
              title: "Library",
            ),
          ],
          onTabChangedListener: (position) {
            setState(() {
              selec = position;
              if (selec == 1) {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const MyAudioBook17(),
                  ),
                );
              }
            });
          },
          initialSelection: selec,
          barBackgroundColor: Colors.black,
          activeIconColor: Colors.white,
          textColor: Colors.white,
          inactiveIconColor: const Color.fromARGB(255, 247, 122, 85),
          circleColor: const Color.fromARGB(255, 72, 56, 208),
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   onTap: (value) {
        //     setState(() {
        //       selec = value;
        //     });
        //     if (value == 1) {
        //       // Navigator.of(context).pushReplacement(
        //       //   MaterialPageRoute(
        //       //     builder: (context) => const MyAudioBook14(),
        //       //   ),
        //       // );
        //     }
        //   },
        //   currentIndex: selec,
        //   elevation: 16,
        //   items: const [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       label: "Home",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.search),
        //       label: "Search",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.library_books_rounded),
        //       label: "Library",
        //     ),
        //   ],
        // ),
      ),
    );
  }

  _textBottom(String s) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: Colors.grey.shade200,
        foregroundColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(
        s,
        style: const TextStyle(
          color: Color.fromARGB(255, 54, 48, 109),
          fontSize: 20,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  _textRow(String s, String t) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const MyAudioBook16(),
                ),
              );
            },
            child: Text(
              s,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
          Text(
            t,
            style: const TextStyle(
              color: Color.fromARGB(255, 72, 56, 208),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  _imagContanier(String s1) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        child: Image(
          image: AssetImage(
            s1,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  _imagRowIsColor(String s2, String text, String text1) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 320,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 160,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(s2),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 12),
                  Text(
                    text,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    text1,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            set = !set;
                          });
                        },
                        child: Icon(
                          set ? Icons.star : Icons.star_border,
                          color: const Color.fromARGB(255, 247, 122, 85),
                          size: 28,
                        ),
                      ),
                      const SizedBox(width: 6),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            set1 = !set1;
                          });
                        },
                        child: Icon(
                          set1 ? Icons.star : Icons.star_border,
                          color: const Color.fromARGB(255, 247, 122, 85),
                          size: 28,
                        ),
                      ),
                      const SizedBox(width: 6),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            set2 = !set2;
                          });
                        },
                        child: Icon(
                          set2 ? Icons.star : Icons.star_border,
                          color: const Color.fromARGB(255, 247, 122, 85),
                          size: 28,
                        ),
                      ),
                      const SizedBox(width: 6),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            set3 = !set3;
                          });
                        },
                        child: Icon(
                          set3 ? Icons.star : Icons.star_border,
                          color: const Color.fromARGB(255, 247, 122, 85),
                          size: 28,
                        ),
                      ),
                      const SizedBox(width: 6),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            set4 = !set4;
                          });
                        },
                        child: Icon(
                          set4 ? Icons.star : Icons.star_border,
                          color: const Color.fromARGB(255, 247, 122, 85),
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "1,000 + Listeners",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _imagRow(String s3, String t1) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const MyAudioBook16(),
          ),
        );
      },
      child: Container(
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
      ),
    );
  }
}
