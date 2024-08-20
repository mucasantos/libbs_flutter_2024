import 'package:first_app/constants/styles.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 140,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 192, 249, 194),
        borderRadius: borderRadius,
      ),
      child: Column(
        children: [
          Image.asset("assets/images/categ1.png"),
          Text(
            "Frutas e Vegetais",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
