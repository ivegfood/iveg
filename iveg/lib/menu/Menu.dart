import 'package:iveg/menu/historico.dart';
import 'package:iveg/menu/pesquisar.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaMenu extends StatefulWidget {
  @override
  _TelaMenuState createState() => _TelaMenuState();
}

class _TelaMenuState extends State<TelaMenu> {
  var formKey = GlobalKey<FormState>();

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
    });
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
            body: TabBarView(
              children: [
                //Aba humano
                Column(
                  children: [Container(
                          padding: EdgeInsets.all(40),
                          color: Colors.grey[300],
                          height: 320,
                          child: Scrollbar(
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return Container(
                                    width: 200,
                                    height: 200,
                                    margin: EdgeInsets.all(20),
                                    color: Colors.blue,
                                    child: Center(
                                      child: Text('Item $index'),
                                    ),
                                  );
                                }),
                          ),
                        ),
                      
                       Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          color: Colors.grey[300],
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: 20,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 200,
                                  height: 200,
                                  margin: EdgeInsets.all(20),
                                  color: Colors.grey[400],
                                  child: Row(children: [
                                    Container(
                                      width: 150,
                                      child: Center(
                                        child: Image.network(
                                            'https://picsum.photos/id/${index + 1}/120'),
                                      ),
                                    ),
                                    Expanded(
                                        child: Container(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras cursus congue sem, at auctor mauris ornare vel. Nullam quis libero sit amet ante convallis ornare. '),
                                            SizedBox(height: 20),
                                            Container(
                                              alignment: Alignment.bottomRight,
                                              child: ElevatedButton(
                                                child: Text('comprar'),
                                                onPressed: () {},
                                              ),
                                            )
                                          ]),
                                    )),
                                  ]),
                                );
                              }),
                        ),
                      ),
                  ]                  
                ),

                //Aba Pet

                Column(
                               
                ),



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
