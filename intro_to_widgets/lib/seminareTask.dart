/*
Date: 22.04.2025
Class Work: List names one by one;

A B C D E F G H
B
C
D
E
F
G
H

By the help of Row, and Column show letter as above on the screen;

*/

// SOLUTION
import 'package:flutter/material.dart';

class LetterChess extends StatelessWidget {
  LetterChess({super.key});

  final List<String> _letters = ["A", "B", "C", "D", "E", "F", "G", "H"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Solution of Seminare Task'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 40, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(spacing: 10, children: _letters.map((e) => Text(e)).toList()),
            /// just remove A from appearance;
            ..._letters.sublist(1).map((e) => Text(e)),
          ],
        ),
      ),
    );
  }
}
