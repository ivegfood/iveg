import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iveg/BottomBarApp.dart';
import 'package:iveg/NavBNBar.dart';
import 'package:iveg/menu/drawer.dart';

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
        body: Column(
          children: [
            Column(
              children: [SizedBox(height: 6), Text('Histórico de Compras')],
            ),
            SizedBox(height: 15),
            Expanded(
              child: Container(
                color: Colors.green[50],
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
                              height: 200,
                              margin: EdgeInsets.only(bottom: 15),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: Colors.grey[200]!),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                child: Column(                                  
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                    Text('1 - Primeiro item pedido'),
                                    Text('3 - Segundo item pedido'),
                                    Text('1 - Terceiro item pedido'),
                                    Divider(
                                      height: 20,
                                      thickness: 1,
                                      indent: 20,
                                      endIndent: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Avaliação:'),
                                        Spacer(),
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
        bottomNavigationBar:
            BottomBarApp(menuSelecionado: StatusBBar.historico));
  }
}
