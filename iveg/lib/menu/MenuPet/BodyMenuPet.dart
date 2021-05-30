import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:iveg/menu/MenuPet/classes/ClasseLojas.dart';
import 'package:iveg/menu/MenuPet/classes/ClassesProdutos.dart';
import 'package:iveg/menu/MenuPet/acessorios/ContainerTipos.dart';
import 'package:iveg/menu/MenuPet/acessorios/ContainerLojas.dart';
import 'package:iveg/menu/TelaProdutoPet/TelaPet.dart';

class BodyMenuPet extends StatefulWidget {
  const BodyMenuPet({Key? key, this.tipos}) : super(key: key);
  final List<TipoProdutos>? tipos;

  @override
  _BodyMenuPetState createState() => _BodyMenuPetState();
}

class _BodyMenuPetState extends State<BodyMenuPet> {
  late CollectionReference ltsLojas;
  @override
  void initState() {
    super.initState();
    ltsLojas = FirebaseFirestore.instance.collection('ltsLojas');
  }

  Widget containerLojas(item) {
    LojasPet lojas = LojasPet.fromJson(item.data(), item.id);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset(lojas.imgLoja),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(lojas.nmLoja,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    Text(lojas.resumo,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300)),
                    Text(lojas.intervalo,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue[300])),
                    Container(
                      height: 20,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 15),
                            SizedBox(width: 5),
                            Text(lojas.star)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  ...List.generate(ltsTipos.length,
                      (index) => ContainerTipos(tipo: widget.tipos![index])),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Text('Lojas',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
                stream: ltsLojas.snapshots(),
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.none:
                      return Center(
                          child: Text('Erro ao conectar ao Firestore'));

                    case ConnectionState.waiting:
                      return Center(child: CircularProgressIndicator());

                    default:
                      final dados = snapshot.requireData;

                      return ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: dados.size,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => TelaPet()));
                              },
                              child: containerLojas(dados.docs[index]),
                            );
                          });
                  }
                }),
          ),
        ],
      ),
    );
  }
}
