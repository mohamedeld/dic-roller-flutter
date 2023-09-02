import 'package:firstproject/gradient_container.dart';
import 'package:firstproject/style_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Flutter Demo',
        home: GradientContainer(
          colors: [Colors.green, Colors.blue],
        ));
  }
}
