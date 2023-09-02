import 'dart:math';

import 'package:flutter/material.dart';

class DicRoller extends StatefulWidget {
  const DicRoller({super.key});

  @override
  State<DicRoller> createState() => _DicRollerState();
}

class _DicRollerState extends State<DicRoller> {
  var activeDiceImage = 'images/dice-2.png';
  rollDice() {
    Random random = Random();
    int randomNumber = random.nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'images/dice-$randomNumber.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(activeDiceImage, width: 200.0),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Colors.purple),
          padding: const EdgeInsets.all(10),
          child: TextButton(
              onPressed: rollDice,
              child: const Text(
                'Click',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
        )
      ],
    );
  }
}
