import 'package:flutter/material.dart';
import 'package:intro_to_widgets/boxWithColor.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  final List<String> _printedTexts = [];

  void addPrintTextToTheScreen(String text) {
    _printedTexts.add(text);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          spacing: 10,
          children: [
            GestureDetector(
              onTap: () {
                addPrintTextToTheScreen("Gesture detector on Tap");
              },
              onDoubleTap: () {
                addPrintTextToTheScreen('DOUBLE TAP');
              },
              child: BoxWithColor(name: 'Gesture Detector'),
            ),
            InkWell(
              onLongPress: () {
                addPrintTextToTheScreen('InkWell Long Press');
              },
              child: Text("Ink Well Button"),
            ),

            // Elevated Button
            ElevatedButton(
              onPressed: () {
                addPrintTextToTheScreen('Silence is preferred!');
              },
              /// Change Global Theming
              // style: Theme.of(context).elevatedButtonTheme.style?.copyWith(),
              
              /// Add New Local Theming
              // style: ButtonStyle(
              //   backgroundColor: WidgetStatePropertyAll(
              //     Colors.green,
              //   ), // Change the background color
              // ),
              child: Text('Silence please!'),
            ),

            TextButton(
              onPressed: () {
                addPrintTextToTheScreen('Thank you!');
              },
              child: Text('Forget Password?'),
            ),

            OutlinedButton(
              onPressed: () {
                addPrintTextToTheScreen('Outlined button');
              },
              child: Text('Me outlined!'),
            ),
            //Icon Button
            IconButton(
              onPressed: () {
                addPrintTextToTheScreen('John Snow');
              },
              icon: Icon(Icons.ac_unit),
            ),

            FloatingActionButton(
              onPressed: () {
                addPrintTextToTheScreen("Floating action");
              },
              child: Icon(Icons.add),
            ),
          ],
        ),

        Column(children: _printedTexts.map((txt) => Text(txt)).toList()),
      ],
    );
  }
}
