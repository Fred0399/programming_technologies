
import 'package:flutter/material.dart';

class BoxWithColor extends StatelessWidget {
  const BoxWithColor({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        border: Border.all(color: Colors.red, width: 5),
      ),

      child: SizedBox(
        width: 100,
        height: 100,
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );

  }
}

