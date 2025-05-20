import 'package:flutter/material.dart';
import 'package:intro_to_widgets/provider_username/user.dart';

class ChangeUserData extends StatefulWidget {
  ChangeUserData({super.key, required this.initialUserData});

  final User initialUserData;

  @override
  State<ChangeUserData> createState() => _ChangeUserDataState();
}

class _ChangeUserDataState extends State<ChangeUserData> {
  late final TextEditingController nameController;
  late final TextEditingController groupNoController;

  @override
  void initState() {
    nameController = TextEditingController(text: widget.initialUserData.userName);
    groupNoController = TextEditingController(text: widget.initialUserData.groupNumb.toString());
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    groupNoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          controller: nameController,
          decoration: InputDecoration(label: Text('NAME')),
        ),
        SizedBox(height: 10),
        TextField(
          controller: groupNoController,
          decoration: InputDecoration(label: Text('Group No')),
        ),

        Text('Updated_NAME: ${nameController.text}'),
        Text('Updated_No: ${groupNoController.text}'),
        ElevatedButton(
          onPressed: () {
            setState(() {});
          },
          child: Text('Update'),
        ),
      ],
    );
  }
}
