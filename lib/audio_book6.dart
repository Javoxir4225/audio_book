import 'package:audio_book/audio_book5.dart';
import 'package:audio_book/audio_book7.dart';
import 'package:flutter/material.dart';

class MyAudioBok6 extends StatefulWidget {
  // bool ff;
  const MyAudioBok6({
    super.key,
  });

  @override
  State<MyAudioBok6> createState() => _MyAudioBok6State();
}

class _MyAudioBok6State extends State<MyAudioBok6>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation6;
  bool animation = true;
  int _ontep = 0;
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
                            if (value != "azamovjavohir4225@gmail.com") {
                              return "Error: azamovjavohir4225@gmail.com";
                            } else {
                              _ontep++;
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
                      _textFormFild("Password",true),
                      const SizedBox(height: 16),
                      _textFormFild("Date of Birth",false),
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
                                  color: Color.fromARGB(255, 247, 122, 85),
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
                                  color: Color.fromARGB(255, 247, 122, 85),
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
                                  color: Color.fromARGB(255, 247, 122, 85),
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

  _textFormFild(String text, bool iF) {
    return Form(
      autovalidateMode: AutovalidateMode.always,
      child: TextFormField(
        validator: (value) {
          if (iF) {
            if (value != "javohir4225") {
              return "Error: javohir4225";
            } else {
              _ontep++;
            }
          } else {
            if (value != "1999.11.07") {
              return "Error: 1999.11.07";
            } else {
              _ontep++;
            }
          }
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
      decoration: color
          ? BoxDecoration(
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
            )
          : null,
      child: ElevatedButton(
        onPressed: () {
          if (_ontep >= 3) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) =>
                  color ? const MyAudioBook7() : const MyAudioBook5(),
            ),
          );
            
          }
        },
        style: ElevatedButton.styleFrom(
          elevation: 6,
          foregroundColor: Colors.blue,
          backgroundColor: color ? Colors.transparent : Colors.white,
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
