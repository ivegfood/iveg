import 'package:flutter/material.dart';
import 'package:iveg/menu/TelaCupons/BodyCupons.dart';
import 'package:iveg/menu/TelaCupons/BottomBarCupom.dart';
import 'package:iveg/menu/TelaCupons/ClasseSeusCupons.dart';

class TelaCupons extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: buildAppBar(),
      body: BodyCupons(),
      bottomNavigationBar:BottomBarCupom(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.green,
      title: Center(
        child: Column(
          children: [
            Text('Cupons'),
            Text('${seusCupons.length} disponíveis', style: TextStyle(fontSize: 10))
          ],
        ),
      ),
    );
  }
}