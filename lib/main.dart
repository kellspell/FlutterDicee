import 'package:dicee/dice_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade900,
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Dicee", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
        ),
        body: const DicePace(),
      ),
    ),
  );
}
