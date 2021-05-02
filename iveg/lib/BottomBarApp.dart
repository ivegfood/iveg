import 'package:flutter/material.dart';
import 'package:iveg/NavBNBar.dart';
import 'package:iveg/Perfil/TelaPerfil.dart';
import 'package:iveg/menu/carrinho.dart';
import 'package:iveg/menu/historico.dart';
import 'package:iveg/menu/menu.dart';
import 'package:iveg/pesquisar/TelaPesquisa.dart';

class BottomBarApp extends StatelessWidget {
  const BottomBarApp({
    Key key,
    @required this.menuSelecionado,
  }) : super(key: key);

  final StatusBBar menuSelecionado;

  @override
  Widget build(BuildContext context) {
    final Color menuInativo = Colors.grey[300];
    return Container(
        padding: EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -15),
                blurRadius: 20,
                color: Colors.grey[200].withOpacity(0.15),
              )
            ]),
        child: SafeArea(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
              IconButton(
                  icon: Icon(
                    Icons.home_outlined,
                    color: StatusBBar.menu == menuSelecionado
                        ? Colors.green
                        : menuInativo,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TelaMenu()));
                  }),
              IconButton(
                  icon: Icon(
                    Icons.search_outlined,
                    color: StatusBBar.pesquisa == menuSelecionado
                        ? Colors.green
                        : menuInativo,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TelaPesquisav2()));
                  }),
              IconButton(
                  icon: Icon(
                    Icons.list_alt_outlined,
                    color: StatusBBar.historico == menuSelecionado
                        ? Colors.green
                        : menuInativo,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TelaHistorico()));
                  }),
              IconButton(
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: StatusBBar.carrinho == menuSelecionado
                        ? Colors.green
                        : menuInativo,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TelaCarrinho()));
                  }),
              IconButton(
                  icon: Icon(
                    Icons.person_outline,
                    color: StatusBBar.perfil == menuSelecionado
                        ? Colors.green
                        : menuInativo,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TelaPerfil()));
                  })
            ])));
  }
}
