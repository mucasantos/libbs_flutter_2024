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
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
              children: users
                  .map((user) => Container(
                        width: double.infinity,
                        color: Colors.blueGrey,
                        margin: EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Text(user.name),
                            Text(user.idade.toString()),
                            Text(user.anoNascimento().toString()),
                          ],
                        ),
                      ))
                  .toList()),
        ),
      ),
    );
  }
}
