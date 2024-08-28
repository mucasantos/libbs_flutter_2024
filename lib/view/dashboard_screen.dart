import 'package:first_app/constants/images_assets.dart';
import 'package:first_app/constants/styles.dart';
import 'package:first_app/models/produto_model.dart';
import 'package:first_app/widgets/card_produto.dart';
import 'package:first_app/widgets/container_propaganda.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    ProdutoModel produto =
        ProdutoModel(imagem: AppImages.apple, titulo: "Maça", preco: 6.99);
    ProdutoModel produto2 = ProdutoModel(
        imagem: AppImages.refri1, titulo: "Refrigerante", preco: 6.99);
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha dasboard'),
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset(
              AppImages.logoCarrot,
              height: 65,
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on),
              Text("Cotia, São Paulo"),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(32.0),
            child: TextField(
              decoration: textFieldDecoration,
            ),
          ),
          ContainerPropaganda(),
          Text("oFERTAS"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardProduto(
                produto: produto,
              ),
              CardProduto(
                produto: produto2,
              ),
            ],
          ),
          Text("Mais vendidos"),
          Text("Cards de frutas "),
        ],
      ),
    );
  }
}
