/* import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iveg/menu/carrinho.dart';
import 'package:iveg/menu/drawer.dart';
import 'package:iveg/menu/historico.dart';
import 'package:iveg/menu/pesquisar.dart';
import 'package:iveg/menu/promocoes.dart';
import 'package:iveg/pesquisar/TelaPesquisa.dart';

class VisualizaCupom extends StatefulWidget {
  @override
  _VisualizaCupomState createState() => _VisualizaCupomState();
}

class Cupons {
  String imagens;
  String nome;
  double preco;

  Cupons({this.imagens, this.nome, this.preco});
}

class _VisualizaCupomState extends State<VisualizaCupom> {
  var formKey = GlobalKey<FormState>();
  var listaCupons = [];
  var listaLoja = [];
  var utilizar = Icon(Icons.check);
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
    //Humano
    listaCupons.add(Cupons(
        nome: 'Loja A',
        preco: 10.00,
        imagens: 'assets/icones/cupom_icone.png'));
   listaCupons.add(Cupons(
        nome: 'Loja B',
        preco: 20.00,
        imagens: 'assets/icones/cupom_icone.png'));
   listaCupons.add(Cupons(
        nome: 'Loja C',
        preco: 5.00,
        imagens: 'assets/icones/cupom_icone.png'));
    listaCupons.add(Cupons(
        nome: 'Loja D',
        preco: 15.00,
        imagens: 'assets/icones/cupom_icone.png'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Cupons de Desconto',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
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
              itemCount: listaCupons.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  trailing: IconButton(
                    icon: utilizar,
                    onPressed: () {
                      setState(() {
                        utilizar = Icon(Icons.check, color: Colors.red);
                      }
                      );
                    },
                  ),
                  title: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TelaCarrinho()
                            )
                        );
                      },
                      child: Container(
                          child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.all(1),
                              height: 30,
                              width: 30,
                              child: Image.asset(
                                  retornaImagem(listaCupons[index]))),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(retornaNome(listaCupons[index]),
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                                Text(
                                    'R\$ ' +
                                        retornaPreco(listaCupons[index]),
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.grey)),
                              ],
                            ),
                          ),
                        ],
                      )
                    )
                  ),
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

  String retornaImagem(Cupons objeto) {
    return objeto.imagens;
  }

  String retornaNome(Cupons objeto) {
    return objeto.nome;
  }

  String retornaPreco(Cupons objeto) {
    String texto = objeto.preco.toString();
    return texto;
  }
}
 */