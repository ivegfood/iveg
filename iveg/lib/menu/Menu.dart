import 'dart:ui';

import 'package:iveg/menu/carrinho.dart';
import 'package:iveg/menu/historico.dart';
import 'package:iveg/menu/pesquisar.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iveg/menu/promocoes.dart';

class TelaMenu extends StatefulWidget {
  @override
  _TelaMenuState createState() => _TelaMenuState();
}

class _TelaMenuState extends State<TelaMenu> {
  var formKey = GlobalKey<FormState>();
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
    listacategoria.add('assets/icones/vegetables_icones.png');
    listacategoria.add('assets/icones/suco_icone.png');
    listacategoria.add('assets/icones/perfumaria_icone.png');
    listacategoria.add('assets/icones/acessorios_icone.png');
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
                style: GoogleFonts.staatliches(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              backgroundColor: Colors.green,
              centerTitle: true,
            ),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                    child: Center(
                        child: Text(
                      'Menu',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    )),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  ListTile(
                    title: Text('Funcionalidade 1'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Funcionalidade 2'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Funcionalidade 3'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            backgroundColor: Theme.of(context).backgroundColor,
            body: TabBarView(children: [
              //Aba humano
              Column(children: [
                Container(
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
                                    child: Image.network(listacategoria[index],
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
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    color: Colors.grey[300],
                    child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      itemCount: 20,
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
                                      builder: (context) =>
                                          TelaCarrinho())
                              );
                            },
                            child: Container(child: Text('Produto $index'))
                          ),
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
}
