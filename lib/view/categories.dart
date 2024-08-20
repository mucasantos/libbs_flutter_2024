import 'package:first_app/constants/styles.dart';
import 'package:first_app/widgets/category_card.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Encontre Produtos"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              decoration: textFieldDecoration,
            ),
          ),
          Text("Primeira row..."),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryCard(),
              CategoryCard(),
            ],
          ),
          Text("segunda row..."),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryCard(),
              CategoryCard(),
            ],
          ),
          Text("segunda row..."),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryCard(),
              CategoryCard(),
            ],
          )
        ],
      ),
    );
  }
}
