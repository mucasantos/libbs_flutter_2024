import 'package:flutter/material.dart';

class ContainerPropaganda extends StatelessWidget {
  const ContainerPropaganda({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/images/image-card.jpg',
          ),
        ),
      ),
      child: const Stack(
        children: [
          Positioned(
            bottom: 10,
            right: 20,
            child: Text(
              "Ofertas sensacionais!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
              right: 30,
              top: 10,
              child: Icon(
                Icons.favorite,
                color: Colors.white,
                size: 40,
              )),
        ],
      ),
    );
  }
}
