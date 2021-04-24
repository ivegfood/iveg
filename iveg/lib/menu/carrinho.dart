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
            context, 
            MaterialPageRoute(builder: (context) => TelaMenu()));
      }
      if (indexSelecionado == 1) {
        Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => TelaPesquisa()));
      }
      if (indexSelecionado == 3) {
        Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => TelaOfertas()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      drawer: TesteDrawer(),
      backgroundColor: Colors.blue,
      body: Container(
        color: Colors.blue,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('Carrinho',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          ))),
              Container(
                  height: 800,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.green[50],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 100),
                      Container(
                          width: double.infinity,
                          height: 70,
                          color: Colors.grey[100],
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Text('1',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              child: Container(
                                                child: Icon(Icons.expand_less),
                                              )),
                                        ),
                                        SizedBox(height: 5),
                                        Container(
                                          width: 20,
                                          height: 20,
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              child: Container(
                                                child: Icon(Icons.expand_more),
                                              )),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              VerticalDivider(
                                color: Colors.white,
                                thickness: 5,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Nome do Produto 1',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'Goudy Stout',
                                        fontWeight: FontWeight.bold,
                                    )),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text('+Detalhes'))
                                  ],
                                ),
                              ),
                              VerticalDivider(
                                color: Colors.white,
                                thickness: 5,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Text('R\$ 15,00',
                                    style: TextStyle(
                                        color: Colors.blue[400],
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              ),
                              VerticalDivider(
                                color: Colors.white,
                                thickness: 5,
                              ),
                              IconButton(
                                  icon: Icon(Icons.delete_outline,
                                      color: Colors.red, size: 20),
                                  onPressed: () {})
                            ],
                          ))
                    ],
                  )),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.close),
      ),
    );
  }
}
