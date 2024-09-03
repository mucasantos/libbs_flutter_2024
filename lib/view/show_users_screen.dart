import 'package:first_app/models/user_model.dart';
import 'package:flutter/material.dart';

class ShowUsersScreen extends StatelessWidget {
  const ShowUsersScreen({
    super.key,
    required this.users,
  });

  final List<UserModel> users;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text(users[0].name),
          ],
        ),
      ),
    );
  }
}
