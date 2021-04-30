import 'package:flutter/material.dart';
import 'package:iveg/menu/TelaCupons/TelaCupons.dart';
import 'package:iveg/menu/fidelidades.dart';
// import 'package:iveg/menu/visualizacupom.dart';
import 'package:iveg/pagamento/adicionarcartao.dart';
import 'package:iveg/telaInicialsobre.dart';

class TesteDrawer extends StatefulWidget {
  @override
  _TesteDrawerState createState() => _TesteDrawerState();
}

class _TesteDrawerState extends State<TesteDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            title: Text('Adicionar Cartão de Crédito'),
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => AdicionarCartao()));
            },
          ),
          ListTile(
            title: Text('Visualizar Cupons de Desconto'),
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => TelaCupons()));
            },
          ),
          ListTile(
            title: Text('Fidelidades'),
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => Fidelidade()));
            },
          ),
          ListTile(
            title: Text('Sobre'),
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => TelaInicialSobre()));
            },
          ),
        ],
      ),
    );
  }
}
