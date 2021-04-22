import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iveg/menu/drawer.dart';
import 'package:iveg/menu/pesquisar.dart';
import 'package:iveg/menu/promocoes.dart';

import 'Menu.dart';

class TelaCarrinho extends StatefulWidget {
  @override
  _TelaCarrinhoState createState() => _TelaCarrinhoState();
}

class _TelaCarrinhoState extends State<TelaCarrinho> {
  int indexSelecionado = 2;

  void _onItemTapped(int index) {
    setState(() {
      //Estudar como ocorre a navegação entre as telas da bottomBar
      //Como controle do index é feito?
      indexSelecionado = index;
      if (indexSelecionado == 0) {        
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TelaMenu()));       
      }
      if (indexSelecionado == 1) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TelaPesquisa()));
      }
      if (indexSelecionado == 3) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TelaOfertas()));                 
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'IVEG',
          style: GoogleFonts.staatliches(
            fontSize: 40,
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      drawer: TesteDrawer(),
      body: Center(child: Text('Carrinho')),
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
    );
  }
}