import 'package:first_app/constants/styles.dart';
import 'package:first_app/models/produto_model.dart';
import 'package:flutter/material.dart';

class CardProduto extends StatelessWidget {
  final ProdutoModel produto;
  const CardProduto({
    super.key,
    required this.produto,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      //height: 180,
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 206, 203, 203),
          ),
          borderRadius: borderRadius),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            produto.imagem,
            height: 80,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 6),
            child: Text(
              produto.titulo,
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
                Text(
                  produto.preco.toString(),
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
