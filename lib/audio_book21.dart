import 'package:flutter/material.dart';

import 'audio_book18.dart';

class MyAudioBook21 extends StatefulWidget {
  const MyAudioBook21({super.key});

  @override
  State<MyAudioBook21> createState() => _MyAudioBook21State();
}

class _MyAudioBook21State extends State<MyAudioBook21> {
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
                  builder: (context) => const MyAudioBook18(),
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          title: const Text(
            "Subscriptions",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 24, left: 24, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    // color: const Color.fromARGB(255, 72, 56, 208),
                  ),
                  height: 330,
                  child: Card(
                    elevation: 10,
                    shadowColor: const Color.fromARGB(255, 72, 56, 208),
                    color: const Color.fromARGB(255, 72, 56, 208),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Image.asset(
                            "assets/images/Ellipse1.png",
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Image.asset(
                            "assets/images/Ellipse.png",
                            height: 260,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Image.asset(
                            "assets/images/Girl.png",
                            height: 300,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 24, top: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "#Stayinspired",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(height: 16),
                              Text(
                                "It's Easy\nto Get\nInsights",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 120),
                              Text(
                                "Subscribe Now",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 36),
                _text(
                    "Take these all!", "What you get from subscription:", true),
                const SizedBox(height: 30),
                _iconTextRow(
                    "Read and listen all preminium\nbooks without limits."),
                const SizedBox(height: 20),
                _iconTextRow("Ad-free experience on any\nplatform."),
                const SizedBox(height: 20),
                _iconTextRow("Exclusive content from\nhand-picked creators."),
                const SizedBox(height: 20),
                _iconTextRow("Cancel anytime without\nnana-pickea creators."),
                const SizedBox(height: 20),
                _iconTextRow("Cancel anytime without\nanymore chargad."),
                const SizedBox(height: 40),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  height: 150,
                  child: Card(
                    elevation: 10,
                    shadowColor: const Color.fromARGB(255, 247, 122, 85),
                    color: const Color.fromARGB(255, 247, 122, 85),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Image.asset(
                            "assets/images/Ellipse2.png",
                            height: 136,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 24, top: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Now Only",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(height: 12),
                              Text(
                                "\$12.99 / month",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 30),
                              Text(
                                "Subscribe Now",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 70),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _text("Access Anywhere", "Ona account for any platform",
                          false),
                      Image.asset(
                        "assets/images/skrin.jpg",
                        width: 370,
                        height: 180,
                      ),
                      const Text(
                        "Phone - Tablet - Desktop",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                const Text(
                  "Subscrible Now",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 72, 56, 208),
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 72, 56, 208),
                        Color.fromARGB(255, 72, 56, 208),
                        Color.fromARGB(255, 72, 56, 208),
                        Color.fromARGB(255, 247, 122, 85),
                        Color.fromARGB(255, 247, 122, 85),
                      ],
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 4,
                      backgroundColor: Colors.transparent,
                      fixedSize: const Size(300, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "SUBSCRIBE",
                    ),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _iconTextRow(String s) {
    return Row(
      children: [
        const Icon(
          Icons.done,
          color: Color.fromARGB(255, 247, 122, 85),
          size: 24,
        ),
        const SizedBox(width: 20),
        Text(
          s,
          style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
        ),
      ],
    );
  }

  _text(String s, String s1, bool cros) {
    return Column(
      crossAxisAlignment:
          cros ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        Text(
          s,
          style: const TextStyle(
            color: Color.fromARGB(255, 72, 56, 208),
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          s1,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
