import 'package:first_app/constants/images_assets.dart';
import 'package:first_app/constants/styles.dart';
import 'package:first_app/mock/produtos_fake_db.dart';
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
    return SafeArea(
      child: Scaffold(
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
            Text("OFERTAS"),
            SizedBox(
              height: 400,
              child: GridView.builder(
                itemCount: appProducts.length, //qtd de produtos
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) {
                  return CardProduto(produto: produto);
                },
              ),
            ),
            Text("Mais vendidos"),
            Text("Cards de frutas "),
          ],
        ),
      ),
    );
  }
}
