/*
Tela utilizada para o estudo de funções e passar parâmetros entre telas
*/

import 'package:first_app/models/user_model.dart';
import 'package:first_app/view/show_users_screen.dart';
import 'package:flutter/material.dart';

class EstudoFuncScreen extends StatelessWidget {
  EstudoFuncScreen({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<UserModel> users = [];

    void salvaInfo() {
      users.add(UserModel(
        idade: int.tryParse(ageController.text) ?? 0,
        name: nameController.text,
      ));
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your username',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: ageController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your age',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  salvaInfo();
                },
                child: Text("Salvar"),
              ),
              ElevatedButton(
                onPressed: () {
                  if (users.isNotEmpty) {
                    //Navegar
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ShowUsersScreen(
                          users: users,
                        ),
                      ),
                    );
                  } else {
                    const snackBar = SnackBar(
                      content: Text('Precisa cadastrar pelo menos 1 usuário!'),
                    );

// Find the ScaffoldMessenger in the widget tree
// and use it to show a SnackBar.
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                child: Text("Mostrar"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
