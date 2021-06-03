import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:iveg/car_compras/classes/carCompras.dart';
import 'package:iveg/car_compras/classes/meu_carrinho.dart';
import 'package:iveg/car_compras/containerProd.dart';

class BodyCarrinho extends StatefulWidget {
  @override
  _BodyCarrinhoState createState() => _BodyCarrinhoState();
}

class _BodyCarrinhoState extends State<BodyCarrinho> {
  late CollectionReference carCompras;
  @override
  void initState() {
    super.initState();
    carCompras = FirebaseFirestore.instance.collection('carCompras');
  }

  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: carCompras.snapshots(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Center(child: Text('Erro ao conectar ao Firestore'));

            case ConnectionState.waiting:
              return Center(child: CircularProgressIndicator());

            default:
              final dados = snapshot.requireData;

              return ListView.builder(
                itemCount: dados.size,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Dismissible(
                    key: Key(dados.docs[index].id),
                    direction: DismissDirection.endToStart,
                    onDismissed: (direction) {
                      carCompras.doc(dados.docs[index].id).delete();
                    },
                    background: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.red[400],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Spacer(),
                          Icon(Icons.delete, color: Colors.white),
                        ],
                      ),
                    ),
                    child: containerCarrinho(dados.docs[index]),
                  ),
                ),
              );
          }
        });
  }

  Widget containerCarrinho(item) {
    CarCompras itemCarrinho = CarCompras.fromJson(item.data(), item.id);
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          SizedBox(
            width: 88,
            child: AspectRatio(
              aspectRatio: 0.88,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(itemCarrinho.imgProduto),
              ),
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemCarrinho.nmProduto,
                style: TextStyle(color: Colors.black, fontSize: 16),
                maxLines: 2,
              ),
              SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  text: "R\$${itemCarrinho.prProduto}",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.red[400]),
                  children: [
                    TextSpan(
                        text: " x${itemCarrinho.qtdItens}",
                        style: Theme.of(context).textTheme.bodyText1),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
