import 'package:flutter/material.dart';

class TexxtInput extends StatefulWidget {
  const TexxtInput({super.key});

  @override
  State<TexxtInput> createState() => _TexxtInputState();
}

class _TexxtInputState extends State<TexxtInput> {
  final nameField = TextEditingController();

  @override
  void dispose() {
    nameField.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(controller: nameField),

        Text(nameField.text),

        ElevatedButton(
          onPressed: () {
            setState(() {});
          },
          child: Text('CLICK and Reveal'),
        ),
      ],
    );
  }
}
