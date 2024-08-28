import 'package:first_app/constants/images_assets.dart';
import 'package:first_app/models/compras_model.dart';
import 'package:first_app/widgets/card_compras.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ComprasModel minhaCompra = ComprasModel(
      imagem: AppImages.apple,
      medida: "1Kg",
      preco: 7.99,
      quantidade: 12,
      titulo: "Maça",
    );

    ComprasModel minhaCompra2 = ComprasModel(
      imagem: AppImages.banana,
      medida: "1Kg",
      preco: 7.99,
      quantidade: 12,
      titulo: "Banana",
    );

    ComprasModel minhaCompra3 = ComprasModel(
      imagem: AppImages.refri1,
      medida: "Lata",
      preco: 7.99,
      quantidade: 12,
      titulo: "Refrigerante",
    );

    ComprasModel minhaCompra4 = ComprasModel(
      imagem: AppImages.galinha,
      medida: "1Kg",
      preco: 7.99,
      quantidade: 12,
      titulo: "Frango",
    );

    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 60,
          centerTitle: true,
          title: Text(
            'My Cart',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 32, bottom: 32),
          child: Container(
            //height: double.infinity,
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      width: 2, color: Color.fromARGB(255, 92, 84, 84)),
                  top: BorderSide(
                      width: 2, color: Color.fromARGB(255, 92, 84, 84))),
            ),
            child: Column(
              children: [
                CardCompras(
                  compra: minhaCompra,
                ),
                CardCompras(
                  compra: minhaCompra2,
                ),
                CardCompras(
                  compra: minhaCompra3,
                ),
                CardCompras(
                  compra: minhaCompra4,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                      width: 300,
                      height: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 84, 156, 78)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Center(
                              child: Text(
                            "Go To Chekout",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          )),
                          Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 62, 117, 57),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "R\$24.00",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ))
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
