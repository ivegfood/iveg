import 'package:flutter/material.dart';
import 'package:iveg/NavBNBar.dart';
import 'package:iveg/Perfil/BodyPerfil.dart';
import 'package:iveg/BottomBarApp.dart';

class TelaPerfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: buildAppBar(),
      body: BodyPerfil(),
      bottomNavigationBar: BottomBarApp(menuSelecionado: StatusBBar.perfil,),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Center(
        child: Text(
          'Perfil',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.green,
    );
  }
}
