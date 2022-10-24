// ignore_for_file: sort_child_properties_last

import 'package:audio_book/audio_book13.dart';
import 'package:flutter/material.dart';

class MyAudioBook12 extends StatefulWidget {
  const MyAudioBook12({super.key});

  @override
  State<MyAudioBook12> createState() => _MyAudioBook12State();
}

class _MyAudioBook12State extends State<MyAudioBook12>
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

  bool _set0 = true;
  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation2,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Stack(
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
                  padding: const EdgeInsets.only(left: 50, top: 220, right: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Personalize Suggestion",
                        style: TextStyle(
                          color: Color.fromARGB(255, 72, 56, 208),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Choose min.3 topic you like, we will give you more often that relate to it.",
                        style: TextStyle(
                          color: Color.fromARGB(255, 72, 56, 208),
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 30),
                      textField(),
                      _set0
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 6),
                                Row(
                                  children: [
                                    textBotom("Art", true),
                                    const SizedBox(width: 6),
                                    textBotom("Business", false),
                                    const SizedBox(width: 6),
                                    textBotom("Biography", true),
                                  ],
                                ),
                                Row(
                                  children: [
                                    textBotom("Comedy", true),
                                    const SizedBox(width: 6),
                                    textBotom("Culture", true),
                                    const SizedBox(width: 6),
                                    textBotom("Education", false),
                                  ],
                                ),
                                Row(
                                  children: [
                                    textBotom("News", true),
                                    const SizedBox(width: 6),
                                    textBotom("Philosophy", true),
                                    const SizedBox(width: 6),
                                    textBotom("Psychology", true),
                                  ],
                                ),
                                Row(
                                  children: [
                                    textBotom("Technology", false),
                                    const SizedBox(width: 6),
                                    textBotom("Travel", true),
                                  ],
                                ),
                                const Text(
                                  "3 topic Selected",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 58, 47, 164),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(height: 30),
                                _elevetBottom("Submit", true),
                                const SizedBox(height: 16),
                                _elevetBottom("Skip", false),
                              ],
                            )
                          : Center(
                              child: SizedBox(
                                width: 150,
                                height: 100,
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
                                        color:
                                            Color.fromARGB(255, 247, 122, 85),
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
            : Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const MyAudioBook13(),
                ),
              );
      },
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
              color: isColor
                  ? Colors.grey.shade400
                  : const Color.fromARGB(255, 72, 56, 208),
            ),
          ),
          fixedSize: const Size(300, 50),
          backgroundColor: isColor ? Colors.grey.shade400 : Colors.white,
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

  textBotom(String label, bool blue) {
    return TextButton(
      onPressed: () {},
      child: Text(
        label,
        style: TextStyle(
          color: blue ? const Color.fromARGB(255, 72, 56, 208) : Colors.white,
          fontSize: 12,
        ),
      ),
      style: TextButton.styleFrom(
        backgroundColor:
            blue ? Colors.white : const Color.fromARGB(255, 72, 56, 208),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(
            color: Color.fromARGB(255, 72, 56, 208),
          ),
        ),
      ),
    );
  }

  textField() {
    return TextFormField(
      onChanged: (value) {
        setState(() {
          if (value == "") {
            _set0 = true;
          } else {
            _set0 = false;
          }
        });
      },
      decoration: InputDecoration(
        fillColor: Colors.grey.shade300,
        filled: true,
        hintText: "Search Categories",
        hintStyle: const TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none),
      ),
    );
  }
}
