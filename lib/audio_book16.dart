import 'package:audio_book/audio_book15.dart';
import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

import 'audio_book17.dart';
import 'audio_book19.dart';

class MyAudioBook16 extends StatefulWidget {
  const MyAudioBook16({super.key});

  @override
  State<MyAudioBook16> createState() => _MyAudioBook16State();
}

class _MyAudioBook16State extends State<MyAudioBook16> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const MyAudioBook15(),
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          title: const Text(
            "New Releases",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _imagGradian("assets/images/audioimag4.png",
                      "The Black Witch", "Lourie Forest"),
                  _imagGradian("assets/images/audioimag5.png",
                      "The Prisoner's Key", "C.J Archer"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _imagGradian("assets/images/audioimag4.4.png",
                      "Witch's Ladder", "Lourie Forest"),
                  _imagGradian("assets/images/audioimag7.png", "The Fire Queen",
                      "Emily R.King"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _imagGradian("assets/images/audioimag6.png",
                      "The Kindnapper's Accomplise", "Lourie Forest"),
                  _imagGradian("assets/images/audioimag7.7.png", "Alipha Bound",
                      "Holly Hook"),
                ],
              ),
            ],
          ),
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
             setState(() {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => position == 1
                    ? const MyAudioBook17()
                    : const MyAudioBook19(),
                  ),
                );
           
         });
          },
        ),
      ),
    );
  }

  _imagGradian(String s, String t, String t2) {
    return SizedBox(
      height: 270,
      width: 180,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 190,
              width: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                  image: AssetImage(s),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              t,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
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

class My extends StatefulWidget {
  const My({super.key});

  @override
  State<My> createState() => _MyState();
}

class _MyState extends State<My> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
