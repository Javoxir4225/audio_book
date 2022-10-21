import 'package:audio_book/audio_book5.dart';
import 'package:audio_book/audio_book6.dart';
import 'package:audio_book/audio_book8.dart';
import 'package:flutter/material.dart';

class MyAudioBook7 extends StatefulWidget {
  const MyAudioBook7({super.key});

  @override
  State<MyAudioBook7> createState() => _MyAudioBook7State();
}

class _MyAudioBook7State extends State<MyAudioBook7>with SingleTickerProviderStateMixin {

  late AnimationController _animationController;
  late Animation<Offset> _animation7;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation7 = Tween(
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
      position: _animation7,
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
                        "Confirmation Code",
                        style: TextStyle(
                          color: Color.fromARGB(255, 20, 66, 104),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        "Enter the confirmation code we sent to",
                        style: TextStyle(
                          color: Color.fromARGB(255, 58, 124, 179),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      const Text(
                        "your@gmail.com",
                        style: TextStyle(
                          color: Color.fromARGB(255, 20, 66, 104),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 16),
                      _textFormFild("Confirmation Code"),
                      const SizedBox(height: 16),
                      Row(
                        children: const [
                          Text(
                            "Didn't receive the code?  ",
                            style: TextStyle(
                              color: Color.fromARGB(255, 20, 66, 104),
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Resend",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
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
      decoration: color ?BoxDecoration(
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
                  color ? const MyAudioBook8() :  MyAudioBok6(),
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
