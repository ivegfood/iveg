import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iveg/car_compras/classes/meu_carrinho.dart';
import 'package:iveg/menu/TelaDetalhes/TelaDetalhes.dart';
import 'package:iveg/menu/TelaProdutoPet/acessorios/ContainerPet.dart';
import 'package:iveg/menu/TelaProdutoPet/classes/produtosPet.dart';

class BodyTelaPet extends StatefulWidget {
  const BodyTelaPet({
    Key? key,
  }) : super(key: key);

  @override
  _BodyTelaPetState createState() => _BodyTelaPetState();
}

class _BodyTelaPetState extends State<BodyTelaPet> {
  late CollectionReference produtosPet;
  @override
  void initState() {
    super.initState();
    produtosPet = FirebaseFirestore.instance.collection('produtosPet');
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.asset('assets/icones/loja_icone.png')),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('Produtos',
                  style: GoogleFonts.openSans(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Container(
                  height: 450,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: StreamBuilder<QuerySnapshot>(
                          stream: produtosPet.snapshots(),
                          builder: (context, snapshot) {
                            switch (snapshot.connectionState) {
                              case ConnectionState.none:
                                return Center(
                                    child:
                                        Text('Erro ao conectar ao Firestore'));

                              case ConnectionState.waiting:
                                return Center(
                                    child: CircularProgressIndicator());

                              default:
                                final dados = snapshot.requireData;

                                return ListView.builder(
                                  itemCount: dados.size,
                                  itemBuilder: (context, index) => Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    child: containerProdPet(dados.docs[index]),
                                  ),
                                );
                            }
                          })),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget containerProdPet(item) {
    ProdutosPet produto = ProdutosPet.fromJson(item.data(), item.id);
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TelaDetalhes()));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFFF5F6F9), 
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            SizedBox(
              width: 100,
              child: AspectRatio(
                aspectRatio: 0.88,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(produto.imgProduto),
                ),
              ),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  produto.nmProduto,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  maxLines: 2,
                ),
                SizedBox(height: 10),
                Text.rich(
                  TextSpan(
                    text: "R\$${produto.prProduto}",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.red[400]),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
