import 'package:first_app/constants/styles.dart';
import 'package:first_app/models/produto_model.dart';
import 'package:first_app/widgets/card_produto.dart';
import 'package:first_app/widgets/container_propaganda.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    ProdutoModel produto = ProdutoModel(
        imagem:
            "https://images.pexels.com/photos/5966630/pexels-photo-5966630.jpeg",
        titulo: "Banana verde",
        preco: 6.99);
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha dasboard'),
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset(
              "assets/images/logo.png",
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
                produto: produto,
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
