import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  const Cards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40, left: 40, top: 20),
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    width: 2, color: Color.fromARGB(255, 202, 196, 196)))),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/images/frutas.png",
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cesta de Frutas",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "1kg, Price",
                        style: TextStyle(
                            color: Color.fromARGB(255, 165, 161, 161)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 1,
                                color: Color.fromARGB(200, 200, 200, 200)),
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.remove,
                              color: Color.fromARGB(255, 200, 200, 200),
                            ),
                          ),
                        ),
                        Container(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Text(
                            "1",
                            style: TextStyle(fontSize: 18),
                          ),
                        )),
                        InkWell(
                          onTap: () {
                            print("Cliquei!!");
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: Color.fromARGB(200, 200, 200, 200)),
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.add,
                                color: Color.fromARGB(255, 26, 129, 0),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: new EdgeInsets.symmetric(vertical: 17.0),
                    child: Icon(Icons.close,
                        color: Color.fromARGB(255, 179, 177, 177)),
                  ),
                  Container(
                    margin: new EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      'R\$5.99',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
