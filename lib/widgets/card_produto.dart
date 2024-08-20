import 'package:first_app/constants/styles.dart';
import 'package:flutter/material.dart';

class CardProduto extends StatelessWidget {
  const CardProduto({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 250,
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 206, 203, 203),
          ),
          borderRadius: borderRadius),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Image.network(
              'https://images.pexels.com/photos/5966630/pexels-photo-5966630.jpeg',
              fit: BoxFit.contain,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Organic Bananas',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
          const Text('***'),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "R\$4.77",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  //  margin: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 61, 184, 98),
                    borderRadius: borderRadius,
                  ),
                  child: IconButton(
                    iconSize: 20,
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
