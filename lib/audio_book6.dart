import 'package:audio_book/audio_book5.dart';
import 'package:audio_book/audio_book7.dart';
import 'package:flutter/material.dart';

class MyAudioBok6 extends StatefulWidget {
  const MyAudioBok6({super.key});

  @override
  State<MyAudioBok6> createState() => _MyAudioBok6State();
}

class _MyAudioBok6State extends State<MyAudioBok6>with SingleTickerProviderStateMixin {

  late AnimationController _animationController;
  late Animation<Offset> _animation6;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation6 = Tween(
      begin: const Offset(1.0, 0.0),
      end: const Offset(0.0, 0.0),
    ).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );
    _animationController.forward();
    super.initState();
  }
  bool checkBox = true;
  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation6,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
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
                        "Register",
                        style: TextStyle(
                          color: Color.fromARGB(255, 20, 66, 104),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Form(
                        autovalidateMode: AutovalidateMode.always,
                        child: TextFormField(
                          validator: ((value) {
                            if (value?.contains("@") == false) {
                              return "Input correct text";
                            }
                          }),
                          decoration: InputDecoration(
                            fillColor: Colors.grey.shade300,
                            filled: true,
                            hintText: "Email",
                            hintStyle: const TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      _textFormFild("Password"),
                      const SizedBox(height: 16),
                      _textFormFild("Date of Birth"),
                      const SizedBox(height: 16),
                      Column(
                        children: [
                          Row(
                            children: const [
                              Text(
                                "By signing up, you agree to uor",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "Terms",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                "Data Policy",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "and",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "Cookies Policy",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      _textBottom("Register", true),
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
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => color? const MyAudioBook7():const MyAudioBook5(),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        elevation: 6,
        foregroundColor: Colors.blue,
        backgroundColor:
            color ? const Color.fromARGB(255, 72, 56, 209) : Colors.white,
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
    );
  }
}
