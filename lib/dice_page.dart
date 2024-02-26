import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

class DicePace extends StatefulWidget {
  const DicePace({super.key});

  @override
  State<DicePace> createState() => _DicePaceState();
}

class _DicePaceState extends State<DicePace> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void changedDiceNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              child: Image.asset('assets/images/$leftDiceNumber.png'),
              onTap: () => changedDiceNumber(),
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: Image.asset(
                'assets/images/$rightDiceNumber.png',
              ),
              onTap: () => changedDiceNumber(),
            ),
          ),
        ],
      ),
    );
  }
}
