import 'dart:ui';

import 'package:iveg/menu/carrinho.dart';
import 'package:iveg/menu/drawer.dart';
import 'package:iveg/menu/historico.dart';
import 'package:iveg/menu/pesquisar.dart';
import 'package:flutter/material.dart';
import 'package:iveg/menu/promocoes.dart';

class TelaMenu extends StatefulWidget {
  @override
  _TelaMenuState createState() => _TelaMenuState();
}

class Produtos {
  String imagens;
  String nome;
  double preco;

  Produtos({this.imagens, this.nome, this.preco});
}

class _TelaMenuState extends State<TelaMenu> {
  var formKey = GlobalKey<FormState>();
  var listaProdutos = [];
  var listacategoria = [];
  // var listaprodutos = [];
  final cat = ['alimentos', 'bebidas', 'perfumaria', 'acessórios'];
  var favorito = Icon(Icons.favorite);
  var adicionar = Icon(Icons.add_circle_outlined);


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
    listacategoria.add('assets/icones/vegetables_icone.png');
    listacategoria.add('assets/icones/suco_icone.png');
    listacategoria.add('assets/icones/perfumaria_icone.png');
    listacategoria.add('assets/icones/acessorios_icone.png');
    listaProdutos.add(Produtos(
        nome: 'Suco de laranja',
        preco: 24.99,
        imagens: 'assets/icones/suco_icone.png'));
    listaProdutos.add(Produtos(
        nome: 'Perfume Vegano',
        preco: 34.99,
        imagens: 'assets/icones/perfumaria_icone.png'));
    listaProdutos.add(Produtos(
        nome: 'Mix de vegetais',
        preco: 44.99,
        imagens: 'assets/icones/vegetables_icone.png'));
    listaProdutos.add(Produtos(
        nome: 'Kit jantar ecológico',
        preco: 99.99,
        imagens: 'assets/icones/acessorios_icone.png'));
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
                    Navigator.pushNamed(context, '/carrinho');
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
                                          listacategoria[index],
                                          height: 100)),
                                  Positioned(
                                    bottom: 20,
                                    child: Text(cat[index]),
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
                          leading: IconButton(
                              icon: adicionar,
                              onPressed: () {
                                setState(() {
                                  adicionar = Icon(Icons.check_box_outlined);
                                });
                              }),

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
                                        builder: (context) => TelaCarrinho()));
                              },
                              child: Container(
                                  child: Row(
                                children: [
                                  Container(
                                      padding: EdgeInsets.all(1),
                                      height: 30,
                                      width: 30,
                                      child: Image.asset(
                                          retornaImagem(listaProdutos[index]))),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(retornaNome(listaProdutos[index]),
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold)),
                                        Text(
                                            'R\$ ' +
                                                retornaPreco(
                                                    listaProdutos[index]),
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.grey)),
                                      ],
                                    ),
                                  ),
                                ],
                              ))),
                          // onTap: () {
                          //   Navigator.pushNamed(context, '/pagamento');
                          // },
                          hoverColor: Colors.red,
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

              Column(),
            ]),
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

  String retornaImagem(Produtos objeto) {
    return objeto.imagens;
  }

  String retornaNome(Produtos objeto) {
    return objeto.nome;
  }

  String retornaPreco(Produtos objeto) {
    String texto = objeto.preco.toString();
    return texto;
  }
}
