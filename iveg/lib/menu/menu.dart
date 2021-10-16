import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iveg/BottomBarApp.dart';
import 'package:iveg/NavBNBar.dart';
import 'package:iveg/menu/MenuPet/BodyMenuPet.dart';
import 'package:iveg/menu/MenuPet/classes/ClassesProdutos.dart';
import 'package:iveg/menu/classes/LojasMenu.dart';
import 'package:iveg/menu/drawer.dart';
import 'package:flutter/material.dart';
import 'package:iveg/menu/produtoh.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

class TelaMenu extends StatefulWidget {
  @override
  const TelaMenu({Key? key}) : super(key: key);
  _TelaMenuState createState() => _TelaMenuState();
}

class Lojas {
  String? nome;
  String? imagens;

  Lojas({this.imagens, this.nome});
}

class _TelaMenuState extends State<TelaMenu> {
  var formKey = GlobalKey<FormState>();
  var listaCategoriaH = [];
  var listaCategoriaP = [];
  var listaLojasH = [];
  var listaLojasP = [];
  final catH = ['alimentos', 'bebidas', 'perfumaria', 'acessórios'];
  final catP = ['alimentos', 'acessórios'];
  var favorito = Icon(Icons.favorite);

  late CollectionReference lojasMenu;

  @override
  void initState() {
    lojasMenu = FirebaseFirestore.instance.collection('lojasMenu');
    //Humano
    listaCategoriaH.add('assets/icones/vegetables_icone.png');
    listaCategoriaH.add('assets/icones/suco_icone.png');
    listaCategoriaH.add('assets/icones/perfumaria_icone.png');
    listaCategoriaH.add('assets/icones/acessorios_icone.png');

    listaLojasH
        .add(Lojas(nome: 'Loja 1', imagens: 'assets/icones/loja_icone.png'));
    listaLojasH
        .add(Lojas(nome: 'Loja 2', imagens: 'assets/icones/loja_icone.png'));
    listaLojasH
        .add(Lojas(nome: 'Loja 3', imagens: 'assets/icones/loja_icone.png'));
    listaLojasH
        .add(Lojas(nome: 'Loja 4', imagens: 'assets/icones/loja_icone.png'));

    //Pet
    listaCategoriaP.add('assets/icones/racao_icone.png');
    listaCategoriaP.add('assets/icones/coleira_icone.png');

    listaLojasP.add(
        Lojas(nome: 'Petshop 1', imagens: 'assets/icones/petshop_icone.png'));
    listaLojasP.add(
        Lojas(nome: 'Petshop 2', imagens: 'assets/icones/petshop_icone.png'));
    listaLojasP.add(
        Lojas(nome: 'Petshop 3', imagens: 'assets/icones/petshop_icone.png'));
    listaLojasP.add(
        Lojas(nome: 'Petshop 4', imagens: 'assets/icones/petshop_icone.png'));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
              appBar: AppBar(
                bottom: TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.people, size: 40)),
                    Tab(icon: Icon(Icons.pets, size: 40))
                  ],
                ),
                title: Text(
                  'VEG',
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                backgroundColor: Colors.green,
                centerTitle: true,
              ),
              drawer: TesteDrawer(),
              backgroundColor: Colors.green[50],
              body: TabBarView(children: [
                //Aba humano
                Column(children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/produtoh');
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.white,
                      height: 150,
                      child: Scrollbar(
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: listaCategoriaH.length,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 100,
                                height: 100,
                                margin: EdgeInsets.all(10),
                                child: new Stack(
                                  children: [
                                    Positioned(
                                        child: Image.network(
                                            listaCategoriaH[index],
                                            height: 80)),
                                    Positioned(
                                      bottom: 10,
                                      left: 15,
                                      child: Text(catH[index]),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        color: Colors.grey[50],
                        child: StreamBuilder<QuerySnapshot>(
                            stream: lojasMenu.snapshots(),
                            builder: (context, snapshot) {
                              switch (snapshot.connectionState) {
                                case ConnectionState.none:
                                  return Center(
                                      child: Text(
                                          'Erro ao conectar ao Firestore'));

                                case ConnectionState.waiting:
                                  return Center(
                                      child: CircularProgressIndicator());

                                default:
                                  final dados = snapshot.requireData;

                                  return ListView.separated(
                                    scrollDirection: Axis.vertical,
                                    itemCount: dados.size,
                                    itemBuilder: (context, index) {
                                      return CheckboxListTile(
                                        value: timeDilation != 1.0,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            timeDilation = value! ? 10.0 : 1.0;
                                          });
                                        },
                                        title: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          TelaProdutoh()));
                                            },
                                            child: buildContainer(
                                                dados.docs[index])),
                                      );
                                    },
                                    separatorBuilder: (context, index) {
                                      return Divider(
                                        color: Colors.blue[100],
                                        thickness: 1,
                                      );
                                    },
                                  );
                              }
                            })),
                  ),
                ]),

                //Aba Pet
                BodyMenuPet(tipos: ltsTipos),
              ]),
              //Rodapé
              bottomNavigationBar:
                  BottomBarApp(menuSelecionado: StatusBBar.menu))),
    );
  }

  Widget buildContainer(item) {
    LojasMenu loja = LojasMenu.fromJson(item.data(), item.id);
    return Container(
        child: Row(
      children: [
        Container(
            padding: EdgeInsets.all(1),
            height: 30,
            width: 30,
            child: Image.asset(loja.imgLoja)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(loja.nmLoja,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ],
    ));
  }
}
