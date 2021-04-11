import 'package:iveg/menu/produto.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaMenu extends StatefulWidget {
  @override
  _TelaMenuState createState() => _TelaMenuState();
}

class _TelaMenuState extends State<TelaMenu> {
  var formKey = GlobalKey<FormState>();  

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
                  Tab(icon: Icon(Icons.people)),
                  Tab(icon: Icon(Icons.pets))
                ],
              ),
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
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                    child: Center(child: Text('Menu', style: TextStyle(fontSize: 24, color: Colors.white),)),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,                                
                    ),
                  ),
                  ListTile(
                    title: Text('Funcionalidade 1'),
                    onTap: () {
                      
                    },
                  ),
                  ListTile(
                    title: Text('Funcionalidade 2'),
                    onTap: () {
                      
                    },
                  ),
                  ListTile(
                    title: Text('Funcionalidade 3'),
                    onTap: () {
                      
                    },
                  ),
                ],
              ),
            ),
            backgroundColor: Theme.of(context).backgroundColor,
            body: TabBarView(children: [
              Column(
                children: [
                  Produto('assets/imagens/marmita.jpeg', 'Marmita', 'R 20,00'),
                  Produto('assets/imagens/hamburguer.jpeg', 'Hamburguer',
                      'R 15,00'),
                  Produto('assets/imagens/macarronada.jpeg', 'Macarronada',
                      'R 15,00'),
                ],
              ),
              Column(
                children: [
                  Produto('assets/imagens/magnus.jpeg', 'Magnus', 'R 20,00'),
                  Produto(
                      'assets/imagens/pedigree.jpeg', 'Pedigree', 'R 15,00'),
                  Produto('assets/imagens/faro.jpeg', 'Faro', 'R 15,00'),
                ],
              ),
            ]),
          )),
    );
  }
}
