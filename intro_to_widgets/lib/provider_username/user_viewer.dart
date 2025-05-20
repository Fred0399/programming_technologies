import 'package:flutter/material.dart';
import 'package:intro_to_widgets/provider_username/user.dart';

class UserViewer extends StatelessWidget {
   UserViewer({super.key, required this.userData});

  final User userData;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.lightGreen,
      child: SizedBox(
        width: 200,
        height: 100,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('NAME: ${userData.userName}'),
            Text("Group No: ${userData.groupNumb}")
          ],
        ),
      ),
    );
  }
}