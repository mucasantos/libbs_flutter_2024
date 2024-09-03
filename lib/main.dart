import 'package:first_app/view/cart_screen.dart';
import 'package:first_app/view/categories_screen.dart';
import 'package:first_app/view/dashboard_screen.dart';
import 'package:first_app/view/estudo_func.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery Store',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: EstudoFuncScreen(),
    );
  }
}
