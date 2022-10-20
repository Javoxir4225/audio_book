import 'package:audio_book/audio_book6.dart';
import 'package:flutter/material.dart';

class MyAudioBook5 extends StatefulWidget {
  const MyAudioBook5({super.key});

  @override
  State<MyAudioBook5> createState() => _MyAudioBook5State();
}

class _MyAudioBook5State extends State<MyAudioBook5>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation5;
  AnimationStatus _animationStatus = AnimationStatus.dismissed;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _animation5 = Tween(
      begin: 1.0,
      end: 0.0,
    ).animate(_animationController)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        _animationStatus = status;
      });
    _animationController.forward();
    super.initState();
  }

  bool checkBox = true;
  int setValidator = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Transform(
        alignment: FractionalOffset.center,
        transform: Matrix4.identity()
          ..setEntry(3, 2, 0.02)
          ..rotateZ(
            3.14 * (_animation5.value),
          ),
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
                // Center(
                //   heightFactor: 0,
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 90),
                //     child: Image.asset(
                //       "assets/images/Dot.png",
                //       height: 25,
                //       width: 25,
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(left: 28, right: 28),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Login to Your Account",
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
                      Form(
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
                            hintText: "Password",
                            hintStyle: const TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      TextButton.icon(
                        style: TextButton.styleFrom(
                          foregroundColor:
                              const Color.fromARGB(255, 20, 66, 104),
                        ),
                        onPressed: () {
                          setState(() {
                            checkBox = !checkBox;
                          });
                        },
                        icon: checkBox
                            ? const Icon(Icons.check_box_outline_blank,
                                color: Colors.grey)
                            : const Icon(Icons.check_box, color: Colors.blue),
                        label: const Text(
                          "Remember me",
                          style: TextStyle(
                            color: Color.fromARGB(255, 20, 66, 104),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 6,
                          backgroundColor:
                              const Color.fromARGB(255, 72, 56, 209),
                          fixedSize: const Size(330, 60),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "Forget Password ?",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      const SizedBox(height: 36),
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Or login with",
                          style: TextStyle(
                            color: Color.fromARGB(255, 20, 66, 104),
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              fixedSize: const Size(100, 60),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: const BorderSide(
                                  color: Color.fromARGB(255, 58, 123, 177),
                                ),
                              ),
                            ),
                            child: const Image(
                              image: AssetImage("assets/images/google.png"),
                            ),
                          ),
                          // const SizedBox(width: 14),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              fixedSize: const Size(100, 60),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: const BorderSide(
                                  color: Color.fromARGB(255, 58, 123, 177),
                                ),
                              ),
                            ),
                            child: const Image(
                              image: AssetImage("assets/images/facebok.png"),
                            ),
                          ),
                          // const SizedBox(width: 14),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              fixedSize: const Size(100, 60),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: const BorderSide(
                                  color: Color.fromARGB(255, 58, 123, 177),
                                ),
                              ),
                            ),
                            child: const Image(
                              image: AssetImage("assets/images/Vector.png"),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an accaun't ?",
                            style: TextStyle(
                                color: Color.fromARGB(255, 20, 66, 104),
                                fontSize: 12),
                          ),
                          const SizedBox(width: 4),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => const MyAudioBok6(),
                                ),
                              );
                            },
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.red),
                            child: const Text(
                              "Register",
                              style: TextStyle(color: Colors.red, fontSize: 12),
                            ),
                          ),
                        ],
                      )
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
}
