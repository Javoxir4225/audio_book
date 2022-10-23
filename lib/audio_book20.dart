import 'package:flutter/material.dart';

import 'audio_book17.dart';

class MyAudioBook20 extends StatefulWidget {
  const MyAudioBook20({super.key});

  @override
  State<MyAudioBook20> createState() => _MyAudioBook20State();
}

class _MyAudioBook20State extends State<MyAudioBook20> {
  bool icon = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const MyAudioBook17(),
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          title: const Text(
            "Harry Potter and the Sorc...",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          actions: const [
            Icon(
              Icons.more_horiz,
              color: Colors.black,
              size: 24,
            ),
            SizedBox(width: 20),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 28, right: 28, top: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 16,
                  shadowColor: const Color.fromARGB(255, 72, 56, 208),
                  child: Container(
                    height: 350,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/HarryPotter1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 44),
              const Text(
                "Harry Potter and the Prison...",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                "J.K Rowling",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 16),
              Stack(
                children: [
                  Divider(
                    thickness: 2.5,
                    color: Colors.grey.shade400,
                  ),
                  const Divider(
                      thickness: 2.5,
                      color: Color.fromARGB(255, 72, 56, 208),
                      endIndent: 200),
                  const Padding(
                    padding: EdgeInsets.only(left: 120, top: 2),
                    child: CircleAvatar(
                      radius: 6,
                      backgroundColor: Color.fromARGB(255, 72, 56, 208),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "12.15",
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                  Text(
                    "47.32",
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ],
              ),
              const SizedBox(height: 36),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.volume_up,
                    color: Color.fromARGB(255, 72, 56, 208),
                    size: 30,
                  ),
                  const Icon(
                    Icons.arrow_circle_left_outlined,
                    color: Color.fromARGB(255, 72, 56, 208),
                    size: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        icon = !icon;
                      });
                    },
                    child: icon
                        ? const Icon(
                            Icons.play_circle,
                            color: Color.fromARGB(255, 72, 56, 208),
                            size: 80,
                          )
                        : const Icon(
                            Icons.pause_circle,
                            color: Color.fromARGB(255, 72, 56, 208),
                            size: 80,
                          ),
                  ),
                  const Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Color.fromARGB(255, 72, 56, 208),
                    size: 50,
                  ),
                  const Icon(
                    Icons.ios_share,
                    color: Color.fromARGB(255, 72, 56, 208),
                    size: 30,
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Color.fromARGB(255, 106, 94, 208),
          unselectedItemColor: Color.fromARGB(255, 106, 94, 208),
          elevation: 0,
          iconSize: 36,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark_remove_outlined,
                color: Color.fromARGB(255, 106, 94, 208),
              ),
              label: "Bookmart",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.insert_chart_sharp,
                color: Color.fromARGB(255, 106, 94, 208),
              ),
              label: "Chapter",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.speed_outlined,
                color: Color.fromARGB(255, 106, 94, 208),
              ),
              label: "Speed 10x",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.download,
                color: Color.fromARGB(255, 106, 94, 208),
              ),
              label: "Download",
            ),
          ],
        ),
      ),
    );
  }
}
