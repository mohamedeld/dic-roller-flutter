import 'package:flutter/material.dart';

import 'package:firstproject/dic_roller.dart';
import 'package:firstproject/style_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});
  GradientContainer.purple({super.key})
      : colors = [Colors.green, Colors.deepPurple];

  final List<Color> colors;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('my title'),
      ),
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: colors)),
        child: const Center(
          child: DicRoller(),
        ),
      ),
    );
  }
}
