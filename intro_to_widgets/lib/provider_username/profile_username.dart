import 'package:flutter/material.dart';
import 'package:intro_to_widgets/provider_username/change_user_data.dart';
import 'package:intro_to_widgets/provider_username/user.dart';
import 'package:intro_to_widgets/provider_username/user_viewer.dart';

class ProfileUsername extends StatelessWidget {
  ProfileUsername({super.key});

  final User user = User(userName: 'Rasul', groupNumb: 652);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            UserViewer(userData: user),
            ChangeUserData(initialUserData: user),
          ],
        ),
      ],
    );
  }
}
