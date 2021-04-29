import 'package:flutter/material.dart';

class Categorias extends StatelessWidget {
  const Categorias({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Padding(
            padding: EdgeInsets.all(30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  UmaLinha(
                    cardUM: UmCard(icone: Icons.icecream, texto: 'Sorvete'),
                    cardDOIS: UmCard(icone: Icons.house, texto: 'Mercado')),
                  UmaLinha(
                    cardUM: UmCard(icone: Icons.fastfood, texto: 'Lanches'),
                    cardDOIS: UmCard(icone: Icons.pets, texto: 'Pets')),
                  UmaLinha(
                    cardUM: UmCard(icone: Icons.pest_control, texto: 'Ração'),
                    cardDOIS: UmCard(icone: Icons.local_restaurant, texto: 'Jantar')),
                  UmaLinha(
                    cardUM: UmCard(icone: Icons.pets, texto: 'Coleira'),
                    cardDOIS: UmCard(icone: Icons.shopping_bag, texto: 'Petshop')),
                  UmaLinha(
                    cardUM: UmCard(icone: Icons.cake_outlined, texto: 'Sobremesas'),
                    cardDOIS: UmCard(icone: Icons.dinner_dining, texto: 'Italiana')),
                  UmaLinha(
                    cardUM: UmCard(icone: Icons.celebration, texto: 'Festa'),
                    cardDOIS: UmCard(icone: Icons.child_friendly_outlined, texto: 'Criança')),
                  UmaLinha(
                    cardUM: UmCard(icone: Icons.free_breakfast, texto: 'Sucos'),
                    cardDOIS: UmCard(icone: Icons.emoji_food_beverage, texto: 'Chá')),
                  SizedBox(height: 45)
                ],
              ),
            )),
      ),
    );
  }
}

class UmaLinha extends StatelessWidget {
  const UmaLinha({
    Key key,
    this.cardUM,
    this.cardDOIS,
  }) : super(key: key);
  final UmCard cardUM;
  final UmCard cardDOIS;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            cardUM,
            Spacer(),
            cardDOIS,
          ],
        ),
        SizedBox(height: 10)
      ],
    );
  }
}

class UmCard extends StatelessWidget {
  const UmCard({
    Key key,
    @required this.icone,
    @required this.texto,
  }) : super(key: key);
  final IconData icone;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Container(
            height: 50,
            width: 140,
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(width: 1.0, color: Colors.grey[300]),
                    left: BorderSide(width: 1.0, color: Colors.grey[300]),
                    right: BorderSide(width: 1.0, color: Colors.grey[300]),
                    bottom: BorderSide(width: 1.0, color: Colors.grey[300])),
                borderRadius: BorderRadius.circular(15)),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Icon(
                    icone,
                    color: Colors.green,
                  ),
                  SizedBox(width: 5),
                  Text(texto,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ))));
  }
}
