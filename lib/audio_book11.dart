// ignore_for_file: sort_child_properties_last

import 'package:audio_book/audio_book10.dart';
import 'package:audio_book/audio_book12.dart';
import 'package:flutter/material.dart';

class MyAudioBook11 extends StatefulWidget {
  const MyAudioBook11({super.key});

  @override
  State<MyAudioBook11> createState() => _MyAudioBook11State();
}

class _MyAudioBook11State extends State<MyAudioBook11>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation2;
  late Animation _animation;

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
                      const SizedBox(height: 6),
                      _set0
                          ? Column(
                              children: [
                                Row(
                                  children: [
                                    textBotom("Art"),
                                    const SizedBox(width: 6),
                                    textBotom("Business"),
                                    const SizedBox(width: 6),
                                    textBotom("Biography"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    textBotom("Comedy"),
                                    const SizedBox(width: 6),
                                    textBotom("Culture"),
                                    const SizedBox(width: 6),
                                    textBotom("Education"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    textBotom("News"),
                                    const SizedBox(width: 6),
                                    textBotom("Philosophy"),
                                    const SizedBox(width: 6),
                                    textBotom("Psychology"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    textBotom("Technology"),
                                    const SizedBox(width: 6),
                                    textBotom("Travel"),
                                  ],
                                ),
                                const SizedBox(height: 40),
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
                  builder: (context) => const MyAudioBook12(),
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

  textBotom(String label) {
    return TextButton(
      onPressed: () {},
      child: Text(
        label,
        style: const TextStyle(
          color: Color.fromARGB(255, 72, 56, 208),
          fontSize: 12,
        ),
      ),
      style: TextButton.styleFrom(
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
    return Form(
      autovalidateMode: AutovalidateMode.always,
      child: TextFormField(
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
      ),
    );
  }
}
