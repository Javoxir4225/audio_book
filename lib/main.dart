

import 'package:audio_book/audio_book0.dart';
// import 'package:audio_book/audio_book2.dart';
// import 'package:audio_book/audio_book1.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyAudioBook());
}
class MyAudioBook extends StatefulWidget {
  const MyAudioBook({super.key});

  @override
  State<MyAudioBook> createState() => _MyAudioBookState();
}

class _MyAudioBookState extends State<MyAudioBook> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAudioBook0(),
    );
  }
}