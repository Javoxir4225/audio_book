import 'package:flutter/material.dart';

class DotIndicator extends AnimatedWidget {
  final PageController pageController;

  const DotIndicator({super.key, required this.pageController})
      : super(listenable: pageController);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(3, (index) => _buildDot(index)),
    );
  }

  _buildDot(int index) {
    double opacity = 1.0 -
        (0.8 *
            ((pageController.page ?? pageController.initialPage) - index)
                .abs());
    if (opacity < 0.2) opacity = 0.2;
    return Container(
      width: 16,
      height: 16,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: opacity < 1
            ? const Color.fromARGB(255, 72, 56, 208).withOpacity(1)
            : const Color.fromARGB(255, 247, 122, 85).withOpacity(1),
      ),
    );
  }
}
