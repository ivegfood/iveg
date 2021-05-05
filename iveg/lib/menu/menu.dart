import 'dart:ui';

import 'package:google_fonts/google_fonts.dart';
import 'package:iveg/BottomBarApp.dart';
import 'package:iveg/NavBNBar.dart';
import 'package:iveg/menu/MenuPet/BodyMenuPet.dart';
import 'package:iveg/menu/MenuPet/classes/ClasseLojas.dart';
import 'package:iveg/menu/MenuPet/classes/ClassesProdutos.dart';
import 'package:iveg/menu/drawer.dart';
import 'package:flutter/material.dart';
import 'package:iveg/menu/produtoh.dart';

class TelaMenu extends StatefulWidget {
  @override
  _TelaMenuState createState() => _TelaMenuState();
}
class Lojas {
  String nome;
  String imagens;

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

  @override
  void initState() {
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

    listaLojasP.add(Lojas(
      nome: 'Petshop 1', 
      imagens: 'assets/icones/petshop_icone.png'));
    listaLojasP.add(Lojas(
      nome: 'Petshop 2', 
      imagens: 'assets/icones/petshop_icone.png'));
    listaLojasP.add(Lojas(
      nome: 'Petshop 3', 
      imagens: 'assets/icones/petshop_icone.png'));
    listaLojasP.add(Lojas(
      nome: 'Petshop 4', 
      imagens: 'assets/icones/petshop_icone.png'));
  
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
                    child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      itemCount: listaLojasP.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                            trailing: IconButton(
                            icon: favorito,
                            onPressed: () {
                              setState(() {
                                favorito =
                                    Icon(Icons.favorite, color: Colors.red);
                              });
                            },
                          ),
                          title: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => TelaProdutoH()));
                              },
                              child: Container(
                                  child: Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.all(1),
                                      height: 30,
                                      width: 30,
                                      child: Image.asset(retornaImagem(
                                          listaLojasH[index]))),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(retornaNome(listaLojasH[index]),
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                ],
                              ))),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          color: Colors.blue[100],
                          thickness: 1,
                        );
                      },
                    ),
                  ),
                ),
              ]),

              //Aba Pet
              BodyMenuPet(tipos: ltsTipos, lojas: ltsLojas),
            ]),
            //Rodapé
            bottomNavigationBar: BottomBarApp(menuSelecionado: StatusBBar.menu)
          )),
    );
  }

  String retornaImagem(Lojas objeto) {
    return objeto.imagens;
  }

  String retornaNome(Lojas objeto) {
    return objeto.nome;
  }
}
