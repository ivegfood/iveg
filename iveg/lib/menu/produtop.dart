/* import 'dart:ui';

import 'package:iveg/menu/carrinho.dart';
import 'package:iveg/menu/drawer.dart';
import 'package:iveg/menu/historico.dart';
import 'package:iveg/menu/pesquisar.dart';
import 'package:flutter/material.dart';
import 'package:iveg/menu/promocoes.dart';
import 'package:iveg/menu/produtoh.dart';
import 'package:iveg/pesquisar/TelaPesquisa.dart';

class TelaProdutoP extends StatefulWidget {
  @override
  _TelaProdutoPState createState() => _TelaProdutoPState();
}

class _TelaProdutoPState extends State<TelaProdutoP> {
  var formKey = GlobalKey<FormState>();
  var listaProdutosP = [];
  var listaLojasP = [];
  var favorito = Icon(Icons.favorite);
  var adicionar = Icon(Icons.add_circle_outlined);

  int indexSelecionado = 0;

  void _onItemTapped(int index) {
    setState(() {
      indexSelecionado = index;
      if (indexSelecionado == 1) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TelaPesquisav2()));
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
    listaProdutosP.add(Produtos(
        nome: 'Ração superpremium',
        preco: 70.99,
        imagens: 'assets/icones/racao_icone.png'));
    listaProdutosP.add(Produtos(
        nome: 'Raçao premium',
        preco: 34.99,
        imagens: 'assets/icones/racao_icone.png'));
    listaProdutosP.add(Produtos(
        nome: 'Coleira básica',
        preco: 15.99,
        imagens: 'assets/icones/coleira_icone.png'));
    listaProdutosP.add(Produtos(
        nome: 'Coleira luxo',
        preco: 99.99,
        imagens: 'assets/icones/coleira_icone.png'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
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
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            color: Colors.grey[300],
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemCount: listaProdutosP.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  trailing: IconButton(
                    icon: favorito,
                    onPressed: () {
                      setState(() {
                        favorito = Icon(Icons.favorite, color: Colors.red);
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
                                  retornaImagem(listaProdutosP[index]))),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(retornaNome(listaProdutosP[index]),
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                                Text(
                                    'R\$ ' +
                                        retornaPreco(listaProdutosP[index]),
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.grey)),
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
 */