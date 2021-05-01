import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iveg/BottomBarApp.dart';
import 'package:iveg/NavBNBar.dart';
import 'package:iveg/menu/drawer.dart';
import 'package:iveg/menu/menu.dart';
import 'package:iveg/menu/promocoes.dart';
import 'package:iveg/pesquisar/TelaPesquisa.dart';

class TelaHistorico extends StatefulWidget {
  @override
  _TelaHistoricoState createState() => _TelaHistoricoState();
}

class _TelaHistoricoState extends State<TelaHistorico> {

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
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: [
          Column(
            children: [
              SizedBox(height: 6),
              Text('Histórico de Compras'),
            ],
          ),
          SizedBox(height: 15),
          Expanded(
            child: Container(
              color: Colors.grey[100],
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '20 de Abril de 2021',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Container(
                            height: 180,
                            margin: EdgeInsets.only(bottom: 15),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: Colors.grey[200]),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Row(children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      child: Center(
                                          child: Icon(
                                        Icons.shop,
                                        color: Colors.white,
                                      )),
                                    ),
                                    SizedBox(width: 10),
                                    Column(
                                      children: [
                                        Text('Nome do mercado',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        Text('Número do Pedido'),
                                      ],
                                    ),
                                  ]),
                                  Divider(
                                    height: 20,
                                    thickness: 1,
                                    indent: 20,
                                    endIndent: 20,
                                  ),
                                  //Trazer esta coluna para a esquerda....
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('1 - Primeiro item pedido'),
                                      Text('3 - Segundo item pedido'),
                                      Text('1 - Terceiro item pedido'),
                                    ],
                                  ),
                                  Divider(
                                    height: 20,
                                    thickness: 1,
                                    indent: 20,
                                    endIndent: 20,
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Avaliação:'),
                                        Row(
                                          children: [
                                            Icon(Icons.star,
                                                color: Colors.amber),
                                            Icon(Icons.star,
                                                color: Colors.amber),
                                            Icon(Icons.star,
                                                color: Colors.amber),
                                            Icon(Icons.star,
                                                color: Colors.amber),
                                            Icon(Icons.star),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomBarApp(menuSelecionado: StatusBBar.historico)
    );
  }
}
