
import 'package:audio_book/audio_book7.dart';
import 'package:audio_book/audio_book9.dart';
import 'package:flutter/material.dart';

class MyAudioBook8 extends StatefulWidget {
  const MyAudioBook8({super.key});

  @override
  State<MyAudioBook8> createState() => _MyAudioBook8State();
}

class _MyAudioBook8State extends State<MyAudioBook8> with SingleTickerProviderStateMixin{


late AnimationController _animationController;
  late Animation<Offset> _animation8;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation8 = Tween(
      begin: const Offset(1.0, 0.0),
      end: const Offset(0.0, 0.0),
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );
    _animationController.forward();
    super.initState();
  }  bool checkBox = true;
  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation8,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 28),
                Center(
                  heightFactor: 2,
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/images/Circle.png",
                        fit: BoxFit.cover,
                        height: 80,
                        width: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80, top: 70),
                        child: Image.asset(
                          "assets/images/Dot.png",
                          height: 25,
                          width: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 28, right: 28),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Gorget Password",
                        style: TextStyle(
                          color: Color.fromARGB(255, 20, 66, 104),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        "Please fill email or phone number end we'll send you a link to get back into your account.",
                        style: TextStyle(
                          color: Color.fromARGB(255, 58, 124, 179),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 16),
                      _textFormFild("Email/Phone Number"),
                      const SizedBox(height: 16),
                      _textBottom("Submit", true),
                      const SizedBox(height: 12),
                      _textBottom("Cancel", false),
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

  _textFormFild(String text) {
    return Form(
      autovalidateMode: AutovalidateMode.always,
      child: TextFormField(
        validator: (value) {
          int x = 0;
          if (value != null) {
            for (var i = 0; i < value.length; i++) {
              if ((int.tryParse(value[i]) == null)) {
                return "eror";
              } else {
                break;
              }
            }
          }
          print("object $value");
        },
        decoration: InputDecoration(
          fillColor: Colors.grey.shade300,
          filled: true,
          hintText: text,
          hintStyle: const TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none),
        ),
      ),
    );
  }

  _textBottom(String label, bool color) {
    return Container(
      height: 60,
      // width: 300,
     decoration: color? BoxDecoration(
              color: const Color.fromARGB(255, 72, 56, 208),
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color.fromARGB(255, 247, 122, 85).withOpacity(1),
                  const Color.fromARGB(255, 247, 122, 85).withOpacity(1),
                  const Color.fromARGB(255, 72, 56, 208),
                  const Color.fromARGB(255, 72, 56, 208),
                  const Color.fromARGB(255, 72, 56, 208),
                ],
              ),
            ):null,
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) =>
                  color ? const MyAudioBook9() : const MyAudioBook7(),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          elevation: 6,
          foregroundColor: Colors.blue,
          backgroundColor:
              color ?  Colors.transparent : Colors.white,
          fixedSize: const Size(330, 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
              color: Color.fromARGB(255, 72, 56, 209),
            ),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
              color:
                  color ? Colors.white : const Color.fromARGB(255, 72, 56, 209),
              fontSize: 16),
        ),
      ),
    );
  }
}
