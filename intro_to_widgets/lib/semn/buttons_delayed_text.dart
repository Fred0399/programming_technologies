import 'package:flutter/material.dart';

class ButtonsDelayedText extends StatefulWidget {
  const ButtonsDelayedText({super.key});

  @override
  State<ButtonsDelayedText> createState() => _ButtonsDelayedTextState();
}

class _ButtonsDelayedTextState extends State<ButtonsDelayedText> {
  final List<String> _texts = ['Initial Text'];

  Future<void> addTexts(int seconds) async {
    await Future.delayed(Duration(seconds: seconds));
    _texts.add("printed after $seconds seconds");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10,
        children: [
          // Fr Buttons;
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  addTexts(5);
                },
                child: Text('ADD 5 seconds'),
              ),
              OutlinedButton(
                onPressed: () {
                  addTexts(10);
                },
                child: Text('ADD 10 seconds'),
              ),
              TextButton(
                onPressed: () {
                  addTexts(15);
                },
                child: Text('ADD 15 seconds'),
              ),
            ],
          ),

          // Fr Texts;
          Column(
            children:
                _texts.map((data) {
                  return Text(data);
                }).toList(),
          ),
        ],
      ),
    );
  }
}
