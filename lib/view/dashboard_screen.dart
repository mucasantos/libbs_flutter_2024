import 'package:first_app/constants/styles.dart';
import 'package:first_app/widgets/card_produto.dart';
import 'package:first_app/widgets/container_propaganda.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
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
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardProduto(),
              CardProduto(),
            ],
          ),
          Text("Mais vendidos"),
          Text("Cards de frutas "),
        ],
      ),
    );
  }
}
