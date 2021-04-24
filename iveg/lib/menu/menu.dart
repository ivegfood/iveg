import 'dart:ui';

import 'package:iveg/menu/drawer.dart';
import 'package:iveg/menu/historico.dart';
import 'package:iveg/menu/pesquisar.dart';
import 'package:flutter/material.dart';
import 'package:iveg/menu/promocoes.dart';
import 'package:iveg/menu/produtoh.dart';
import 'package:iveg/menu/produtop.dart';

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

  int indexSelecionado = 0;

  void _onItemTapped(int index) {
    setState(() {
      indexSelecionado = index;
      if (indexSelecionado == 1) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TelaPesquisa()));
        indexSelecionado = 0;
      }
      if (indexSelecionado == 2) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TelaHistorico()));
      }
      if (indexSelecionado == 3) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TelaOfertas()));
      }
    });
  }

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
                'IVEG',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Goudy Stout',
                  fontWeight: FontWeight.bold,
                ),
              ),
              backgroundColor: Colors.green,
              centerTitle: true,
            ),
            drawer: TesteDrawer(),
            backgroundColor: Colors.green,
            body: TabBarView(children: [
              //Aba humano
              Column(children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/produtoh');
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    color: Colors.grey[300],
                    height: 200,
                    child: Scrollbar(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 200,
                              height: 200,
                              margin: EdgeInsets.all(15),
                              child: new Stack(
                                children: [
                                  Positioned(
                                      child: Image.network(
                                          listaCategoriaH[index],
                                          height: 100)),
                                  Positioned(
                                    bottom: 20,
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
                    color: Colors.grey[300],
                    child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      itemCount: 4,
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
              Column(children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/produtop');
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    color: Colors.grey[300],
                    height: 200,
                    child: Scrollbar(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 200,
                              height: 200,
                              margin: EdgeInsets.all(15),
                              child: new Stack(
                                children: [
                                  Positioned(
                                      child: Image.network(
                                          listaCategoriaP[index],
                                          height: 100)),
                                  Positioned(
                                    bottom: 20,
                                    child: Text(catP[index]),
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
                    color: Colors.grey[300],
                    child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      itemCount: 4,
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
                                        builder: (context) => TelaProdutoP()));
                              },
                              child: Container(
                                  child: Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.all(1),
                                      height: 30,
                                      width: 30,
                                      child: Image.asset(retornaImagem(
                                          listaLojasP[index]))),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(retornaNome(listaLojasP[index]),
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
            ]),
            //Rodapé
            bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                  backgroundColor: Colors.green,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Pesquisar',
                  backgroundColor: Colors.green,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.list_alt),
                  label: 'Pedidos',
                  backgroundColor: Colors.green,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.free_breakfast),
                  label: 'Ofertas',
                  backgroundColor: Colors.green,
                ),
              ],
              currentIndex: indexSelecionado,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey,
              onTap: _onItemTapped,
            ),
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
