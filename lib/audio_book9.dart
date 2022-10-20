import 'package:audio_book/audio_book6.dart';
import 'package:flutter/material.dart';

class MyAudioBook9 extends StatefulWidget {
  const MyAudioBook9({super.key});

  @override
  State<MyAudioBook9> createState() => _MyAudioBook9State();
}

class _MyAudioBook9State extends State<MyAudioBook9>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation9;
  AnimationStatus _animationStatus = AnimationStatus.dismissed;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds:1500),
    );
    _animation9 = Tween(
      begin: 1.0,
      end: 0.0,
    ).animate(
      _animationController,
    )..addListener(() { setState(() {
      
    });})..addStatusListener((status) { 
      _animationStatus = status;
    });
    _animationController.forward();
    super.initState();
  }

  bool checkBox = true;
  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: FractionalOffset.center,
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.02)
        ..rotateZ(
          3.14 * (_animation9.value),
        ),
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
                        "Email Sent",
                        style: TextStyle(
                          color: Color.fromARGB(255, 20, 66, 104),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: const [
                          Text(
                            "We sent an email to",
                            style: TextStyle(
                              color: Color.fromARGB(255, 58, 124, 179),
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "y***@gmail.com",
                            style: TextStyle(
                              color: Color.fromARGB(255, 20, 66, 104),
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        "with a link to get back into your account.",
                        style: TextStyle(
                          color: Color.fromARGB(255, 58, 124, 179),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 24),
                      _textBottom("Close", false),
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
            builder: (context) => const MyAudioBook9(),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        elevation: 3,
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
