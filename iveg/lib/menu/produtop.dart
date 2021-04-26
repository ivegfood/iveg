import 'dart:ui';

import 'package:iveg/car_compras/classes/meu_carrinho.dart';
import 'package:iveg/detalhesProd/TelaDetalhes.dart';
import 'package:iveg/menu/acessorios/ContainerPet.dart';
import 'package:iveg/menu/drawer.dart';
import 'package:iveg/menu/historico.dart';
import 'package:iveg/menu/pesquisar.dart';
import 'package:flutter/material.dart';
import 'package:iveg/menu/promocoes.dart';

class TelaProdutoP extends StatefulWidget {
  @override
  _TelaProdutoPState createState() => _TelaProdutoPState();
}

class _TelaProdutoPState extends State<TelaProdutoP> {
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
              itemCount: carCompras.length,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: ContainerPet(
                  carCompras: carCompras[index],
                  press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TelaDetalhes())),
                )                
              ),
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
}
